When("I am on Appimation home page") do
  @pages.page_home.load
  @pages.page_home.isVisible
end


##Scenario 1: Enter Sign Up details and close view
When("I select Sign Up button") do
  @pages.page_home.openSignUp
end
When("I enter {string}, {string}, {string}, {string} in Sign Up fields") do |email, password1, password2, projectName|
  @pages.page_home.enterSignUpDetails(email, password1, password2, projectName)
end
Then("I close Sign Up screen") do
  @pages.page_home.closeSignUp
end


## Scenario 2: Log in with invalid credentials
When("I select Log In button") do
  @pages.page_home.openLogIn
end
When("I enter {string}, {string} in Log In fields") do |email, password|
  @pages.page_home.enterLogInDetails(email, password)
end
Then("I select Login") do
  @pages.page_home.selectLoginButton
end
Then("I validate if error is visible") do
  @pages.page_home.validateInvalidCredentialsError
end


# ###########


# When(/^I am on Appimation home page/) do
#   # visit('/')
#   # unless find(:css, '#logo').visible?
#   #   raise "Logo not visible"
#   # end
#   @pages.page_home.load
#   @pages.page_home.isVisible
# end



# When(/^I open Try now/) do
#   # find(:css, '#start_button').click
#   # unless find(:css, '#signup').visible?
#   #   raise "element not visible"
#   # end
#   @pages.page_home.openTryNow
# end


# Then("I close Try now") do
#   # find(:css, '#signup .closecross').click
#   @pages.page_home.closeTryNow
# end


# When("I enter {string} and {string} in name in contact us") do |name, name2|
#   # unless find(:css, '#name').visible?
#   #   raise "name not visible"
#   # end
#   # find(:css, '#name').send_keys(name)
#   # sleep(2)
#   # find(:css, '#name').native.clear
#   #
#   # find(:css, '#name').send_keys(name2)
#   # sleep(2)

#   @pages.page_home.enterName(name)
#   @pages.page_home.clearName
#   sleep(2)
#   @pages.page_home.enterName(name2)
#   sleep(2)
# end





