module Pages
  include Spinach::DSL

  Given 'some pages have been created' do
    FactoryGirl.create(:page, title: 'foo')
    FactoryGirl.create(:page, title: 'bar')
  end

  When 'I click the "New" link' do
    click_link 'New'
  end
end