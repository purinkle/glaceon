require 'spec_helper'

describe PagesController do
  describe 'GET "index"' do
    let(:pages) { stub(:pages) }

    before do
      controller.stub(:authenticate_user!)
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
end