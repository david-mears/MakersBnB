RSpec.describe 'feature tests' do

  scenario 'user sees the homepage' do
    visit('/')
    expect(page).to have_content "Sign up"
    expect(page.status_code).to be(200)
  end

  # scenario 'user can sign up with correct information' do
  #   visit('/')
  #   fill_in "email", with: "test.email@gmail.com"
  #   fill_in "forename", with: "Test"
  #   fill_in "surname", with: "Email"
  #   fill_in "username", with: "temail"
  #   fill_in "password", with: "password"
  #   fill_in "password_confirmation", with: "password"
  #   click_on "Log in"
  #   # Add confirmation here
  #   # Add confirmation of login here  
  # end

  # Further tests needed
  # --------------------

  # Sign up with bad data - 3 tests - not an email address, duplicate username, duplicate email, non matching password
  # Sign in - 3 tests - correct user/pass, incorrect user, correct user/incorrect pass
  # Add listing - check we can add a space and we see it on the space listing
end
