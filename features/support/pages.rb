module Pages
  include Spinach::DSL

  Given 'some pages have been created' do
    FactoryGirl.create(:page, title: 'foo')
    FactoryGirl.create(:page, title: 'bar')
  end
end