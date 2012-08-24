module Paths
  include Spinach::DSL

  When 'I am looking at the site' do
    visit root_path
  end
end