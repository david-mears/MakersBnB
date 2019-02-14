RSpec.describe 'feature tests' do

  scenario 'user sees the homepage' do
    visit('/')
    expect(page).to have_content "Sign up"
    expect(page.status_code).to be(200)
  end

  scenario 'user can sign up with correct information' do
    visit('/')
    fill_in "email", with: "test.email@gmail.com"
    fill_in "forename", with: "Test"
    fill_in "surname", with: "Email"
    fill_in "username", with: "temail"
    fill_in "password", with: "password"
    fill_in "password_confirmation", with: "password"
    click_button "Sign up"
    expect(page).to have_content "Look at all the places!"
    expect(page.status_code).to be(200)
  end

  scenario 'user can login' do
    visit('/')
    click_on "Log in"
    fill_in "session_username", with: "sgreen"
    fill_in "session_password", with: "password123"
    click_button "Log in"
    expect(page).to have_content "Look at all the places!"
    expect(page.status_code).to be(200)
  end

  scenario 'user can post a new property' do
    visit('/login')
    fill_in "session_username", with: "sgreen"
    fill_in "session_password", with: "password123"
    click_button "Log in"
    click_on "Add your space"
    fill_in "name", with: "Test name"
    fill_in "description", with: "Test description"
    fill_in "price", with: "12345"
    click_on "Submit"
    expect(page).to have_content "Test name"
    expect(page).to have_content "Test description"
    expect(page).to have_content "12345"
    expect(page.status_code).to be(200)
  end

  scenario 'user can view spaces' do
    visit('/')
    click_on "View spaces"
    expect(page).to have_content "Look at all the places!"
    expect(page.status_code).to be(200)
  end
  # 
  # scenario 'user can click on chosen space and see further info' do
  #   visit('/')
  #   click_on "View spaces"
  #   find("#cardimg1").click
  #   current_path.should == "/spaces/:1"
  #   expect(page).to have_content "Dirty Hovel"
  #   expect(page.status_code).to be(200)
  # end

  # Further tests needed
  # --------------------

  # Sign up with bad data - 3 tests - not an email address, duplicate username, duplicate email, non matching password

  # Sign in - 2 more tests - incorrect user, correct user/incorrect pass
end
