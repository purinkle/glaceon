require 'spec_helper'

describe PagesController do
  describe 'GET "show"' do
    let(:id) { '1' }
    let(:page) { stub }

    before(:each) do
      Page.stub(:find).with(id).and_return page
    end

    it 'tries to find the page' do
      Page.should_receive(:find).with id
      get :show, id: id
    end

    it 'stores the page' do
      get :show, id: id
      assigns(:page).should == page
    end
  end
end