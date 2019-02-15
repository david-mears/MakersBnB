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
    expect(page).to have_content "MakersBnB"
    expect(page.status_code).to be(200)
  end

  scenario 'user can login' do
    visit('/')
    click_on "Log in"
    fill_in "session_username", with: "sgreen"
    fill_in "session_password", with: "password123"
    click_button "Log in"
    expect(page).to have_content "MakersBnB"
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

  scenario 'user can post multiple properties' do
    visit('/login')
    fill_in "session_username", with: "sgreen"
    fill_in "session_password", with: "password123"
    click_button "Log in"
    click_on "Add your space"
    fill_in "name", with: "Test name"
    fill_in "description", with: "Test description"
    fill_in "price", with: "12345"
    click_on "Submit"
    click_on "Add your space"
    fill_in "name", with: "Test 2 name"
    fill_in "description", with: "Test 2 description"
    fill_in "price", with: "3456"
    click_on "Submit"
    expect(page).to have_content "Test name"
    expect(page).to have_content "Test description"
    expect(page).to have_content "12345"
    expect(page).to have_content "Test 2 name"
    expect(page).to have_content "Test 2 description"
    expect(page).to have_content "3456"
    expect(page.status_code).to be(200)
  end

  scenario 'user can view spaces' do
    visit('/')
    click_on "View spaces"
    expect(page).to have_content "MakersBnB"
    expect(page.status_code).to be(200)
  end

  scenario 'user can click on chosen space and see further info' do
    visit('/')
    click_on "View spaces"
    click_on "Dirty Hovel"
    current_path.should == "/spaces/1"
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

  # scenario 'dates go into database, and come out, when adding a new space' do
  #   perform_valid_login
  #   visit('/spaces/new')
  #   fill_in 'name', with: 'Octagon House'
  #   fill_in 'description', with: 'octagonal'
  #   fill_in 'price', with: '3'
  #   fill_in 'start_date', with: '04042019'
  #   fill_in 'end_date', with: '10042019'
  #   click_on 'submit'
  # end

  # Further tests needed
  # --------------------

  # Sign up with bad data - 3 tests - not an email address, duplicate username, duplicate email, non matching password

  # Sign in - 2 more tests - incorrect user, correct user/incorrect pass
end
