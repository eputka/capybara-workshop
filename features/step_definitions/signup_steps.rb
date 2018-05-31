### Scenario 1: Enter Sign Up details and close view
When(/^I am on Appimation home page/) do
  @tests.login_tests.load_home_page
end

When("I select Sign Up button") do
  @tests.login_tests.open_sign_up_view
end

When("I submit Sign Up form") do
  @tests.login_tests.fill_sign_up_form()
end

When("I close Sign Up form") do
  @tests.login_tests.close_sign_up_form
end

### Scenario 2: Log in with invalid credentials
When("I select Log In button") do
  @tests.login_tests.open_log_in_view
end

When("I submit invalid Sign Up form") do
  @tests.login_tests.submit_invalid_log_in_form()
end

Then("I validate if error is visible") do
  @tests.login_tests.validate_error_message
end





