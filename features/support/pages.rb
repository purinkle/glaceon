module Pages
  include Spinach::DSL

  And 'some pages have been created' do
    FactoryGirl.create :page
  end
end