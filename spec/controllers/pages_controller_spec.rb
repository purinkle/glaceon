require 'spec_helper'

describe PagesController do
  before do
    controller.stub(:authenticate_user!)
  end

  describe 'GET "index"' do
    let(:pages) { stub(:pages) }

    before do
      Page.stub(all: pages)
    end

    it 'tries to find all of the pages' do
      Page.should_receive(:all)
      get :index
    end

    it 'stores all of the pages' do
      get :index
      assigns(:pages).should == pages
    end
  end

  describe 'GET "new"' do
    let(:page) { stub }

    before do
      Page.stub(new: page)
    end

    it 'creates a new page' do
      Page.should_receive(:new)
      get :new
    end

    it 'stores the new page' do
      get :new
      assigns(:page).should == page
    end
  end
end