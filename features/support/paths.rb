module Paths
  include Spinach::DSL

  When 'I am looking at the site' do
    visit root_path
  end

  When 'I am looking at all the pages' do
    visit pages_path
  end

  When 'I am trying to sign in' do
    visit new_user_session_path
  end
end