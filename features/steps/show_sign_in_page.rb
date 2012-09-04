class ShowSignInPage < Spinach::FeatureSteps
  include Actors
  include Paths

  Then 'the sign in page is shown' do
    should have_selector('title', text: 'Sign in')
  end

  Then 'there is an "Email" field' do
    should have_selector('#user_email')
  end

  Then 'there is a "Password" field' do
    should have_selector('#user_password')
  end

  Then 'there is a "Sign in" button' do
    should have_button('Sign in')
  end
end
