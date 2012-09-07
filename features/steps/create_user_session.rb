class CreateUserSession < Spinach::FeatureSteps
  include Actors
  include Paths
  include Sessions

  Then 'an invalid credentials message is shown' do
    should have_selector('.alert', text: 'Invalid email or password.')
  end

  Then 'the new user session page is shown' do
    should have_selector('title', text: 'Sign in')
  end

  Then 'the page index is shown' do
    should have_selector('title', text: 'Pages')
  end
end
