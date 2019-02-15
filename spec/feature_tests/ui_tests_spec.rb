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
    perform_valid_login
    expect(page).to have_content "Look at all the places!"
    expect(page.status_code).to be(200)
  end

  scenario 'user gets an error when a duplicate email signup' do
    visit('/')
    fill_in "email", with: "test.email@gmail.com"
    fill_in "forename", with: "Test"
    fill_in "surname", with: "Email"
    fill_in "username", with: "temail"
    fill_in "password", with: "password"
    fill_in "password_confirmation", with: "password"
    click_button "Sign up"
    click_on "Log out"
    fill_in "email", with: "test.email@gmail.com"
    fill_in "forename", with: "Test"
    fill_in "surname", with: "Email"
    fill_in "username", with: "temail2"
    fill_in "password", with: "password"
    fill_in "password_confirmation", with: "password"
    click_button "Sign up"
    expect(page).to have_content "Email has already been taken"
    expect(page.status_code).to be(200)
  end

  scenario 'user gets an error when a duplicate username signup' do
    visit('/')
    fill_in "email", with: "test.email@gmail.com"
    fill_in "forename", with: "Test"
    fill_in "surname", with: "Email"
    fill_in "username", with: "temail"
    fill_in "password", with: "password"
    fill_in "password_confirmation", with: "password"
    click_button "Sign up"
    click_on "Log out"
    fill_in "email", with: "test.email2@gmail.com"
    fill_in "forename", with: "Test"
    fill_in "surname", with: "Email"
    fill_in "username", with: "temail"
    fill_in "password", with: "password"
    fill_in "password_confirmation", with: "password"
    click_button "Sign up"
    expect(page).to have_content "Username has already been taken"
    expect(page.status_code).to be(200)
  end

  scenario 'user can post a new property' do
    perform_valid_login
    click_on "Add your space"
    add_space
    expect(page).to have_content "Octagon House"
    expect(page).to have_content "octagonal"
    expect(page).to have_content "3456"
    expect(page.status_code).to be(200)
  end

  scenario 'user can post multiple properties' do
    perform_valid_login
    click_on "Add your space"
    add_space
    click_on "Add your space"
    fill_in "name", with: "Test 2 name"
    fill_in "description", with: "Test 2 description"
    fill_in "price", with: "3456"
    click_on "Submit"
    expect(page).to have_content "Octagon House"
    expect(page).to have_content "octagonal"
    expect(page).to have_content "3456"
    expect(page).to have_content "Test 2 name"
    expect(page).to have_content "Test 2 description"
    expect(page).to have_content "3456"
    expect(page.status_code).to be(200)
  end

  scenario 'user can view spaces' do
    visit('/')
    click_on "View spaces"
    expect(page).to have_content "Look at all the places!"
    expect(page.status_code).to be(200)
  end

  scenario 'user can click on chosen space and see further info' do
    visit('/')
    click_on "View spaces"
    click_on "Dirty Hovel"
    expect(current_path).to eq "/spaces/1"
    expect(page).to have_content "Dirty Hovel"
    expect(page.status_code).to be(200)
  end

  scenario 'user is not greeted in menu when logged out' do
    visit('/')
    expect(page).not_to have_content "Hi,"
  end

  scenario 'user is greeted in menu when logged in' do
    perform_valid_login
    expect(page).to have_content "Hi, Simon!"
  end

  scenario 'user can login and then logout' do
    perform_valid_login
    click_on 'Log out'
    expect(page).not_to have_content "Hi, Simon!"
  end

  # scenario 'dates go into database, and come out, when adding a new space' do
  #   perform_valid_login
  # click_on "Add your space"
  #   add_space
  #   click on 'Octagon House'
  # end

  # Further tests needed
  # --------------------

  # Sign up with bad data - 3 tests - not an email address, duplicate username, duplicate email, non matching password

  # Sign in - 2 more tests - incorrect user, correct user/incorrect pass
end
