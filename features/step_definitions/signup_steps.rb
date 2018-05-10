When("I am on Appimation home page") do
  visit('/legacy')
  unless find(:css, '#logo').visible?
    raise "Logo not visible"
  end
end

##Scenario 1 steps
When("I select Sign Up button") do
  find(:css, '#signup-b').click
  unless find(:css, '#signup').visible?
    raise "element not visible"
  end
end
When("I enter {string}, {string}, {string}, {string} in Sign Up fields") do |email, passw1, passw2, projectName|
  find(:css, '#signup input[name="login"]').send_keys(email)
  find(:css, '#signup input[name="password1"]').send_keys(passw1)
  find(:css, '#signup input[name="password2"]').send_keys(passw2)
  find(:css, '#signup input[name="project_name"]').send_keys(projectName)
end
Then("I close Sign Up screen") do
  find(:css, 'form[action="/user"] .closecross').click
end


## Scenario 2 steps
When("I select Login button") do
  find(:css, '#login-b').click
  unless find(:css, '#login').visible?
    raise "element not visible"
  end
end
When("I enter {string} in Email Address") do |email|
  find(:css, '#login input[name="login"]').send_keys(email)
end
When("I enter {string} in Password") do |email|
  find(:css, '#login input[name="password"]').send_keys(email)
end
Then("I select Sign In button") do
  find(:css, '.button-block').click
end
Then("I validate if error is visible") do
  unless find(:css, 'form[action="/login"] div.alert.alert-danger span.errorText').visible?
    raise "Error is not visible"
  end  
end







