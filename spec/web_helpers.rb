def perform_valid_login
  visit('/')
  click_on "Log in"
  fill_in "session_username", with: "sgreen"
  fill_in "session_password", with: "password123"
  click_button "Log in"
end
