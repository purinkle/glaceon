module Paths
  include Spinach::DSL

  When 'I am viewing a page' do
    visit page_path 1
  end
end