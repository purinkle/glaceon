require 'spec_helper'

describe ApplicationController do
  describe '#after_sign_in_path_for' do
    let(:path) { stub }
    let(:resource) { FactoryGirl.create(:user) }

    before do
      controller.stub(authenticate_user!: nil, pages_path: path)
    end

    it 'gets the page index path' do
      controller.should_receive(:pages_path)
      controller.after_sign_in_path_for(resource)
    end

    it 'returns the page index path' do
      controller.after_sign_in_path_for(resource).should == path
    end
  end
end