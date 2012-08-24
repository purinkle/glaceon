class DisplayTheHomePage < Spinach::FeatureSteps
  include Actors
  include Paths

  Then 'the home page is shown' do
    should have_selector 'title', text: 'Home'
  end
end
