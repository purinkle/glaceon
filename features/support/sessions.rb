module Sessions
  include Spinach::DSL

  Given 'I am signed in' do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign in'
  end

  When 'I sign in with valid credentials' do
    user = FactoryGirl.create(:user)
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign in'
  end

  When 'I sign in with invalid credentials' do
    click_button 'Sign in'
  end
end