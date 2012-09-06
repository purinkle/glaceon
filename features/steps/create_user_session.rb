class CreateUserSession < Spinach::FeatureSteps
  include Actors
  include Paths
  include Sessions

  Then 'the page index is shown' do
    should have_selector('title', text: 'Pages')
  end
end
