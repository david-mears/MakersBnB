def perform_valid_login
  visit('/')
  click_on "Log in"
  fill_in "session_username", with: "sgreen"
  fill_in "session_password", with: "password123"
  click_button "Log in"
end

def add_space
  fill_in 'name', with: 'Octagon House'
  fill_in 'description', with: 'octagonal'
  fill_in 'price', with: '3456'
  fill_in 'start_date', with: '04042019'
  fill_in 'end_date', with: '10042019'
  click_on 'Submit'
end
