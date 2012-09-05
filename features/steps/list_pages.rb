class ListPages < Spinach::FeatureSteps
  include Actors
  include Pages
  include Paths
  include Sessions

  Then 'the page index is shown' do
    should have_selector 'title', text: 'Pages'
  end

  Then 'the pages are listed' do
    should have_selector('td', text: 'foo')
    should have_selector('td', text: 'bar')
  end

  Then 'the sign in page is shown' do
    should have_selector 'title', text: 'Sign in'
  end
end
