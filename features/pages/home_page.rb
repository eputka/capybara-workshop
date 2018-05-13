class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @button_start = Element.new(:css, '#start_button')
    @button_close_try_now = Element.new(:css, '#signup .closecross')
    @input_name_contact_us = Element.new(:css, '#name')
  #Sign Up
    @button_sign_up_landing = Element.new(:css, '#signup-b')
    @form_sign_up = Element.new(:css, '#signup')
    @input_sign_up_email = Element.new(:css, '#signup input[name="login"]')
    @input_sign_up_password = Element.new(:css, '#signup input[name="password1"]')
    @input_sign_up_retry_password = Element.new(:css, '#signup input[name="password2"]')
    @input_sign_up_project_name = Element.new(:css, '#signup input[name="project_name"]')
    @button_sign_up_close = Element.new(:css, 'form[action="/user"] .closecross')
  #Log In
    @button_log_in_landing = Element.new(:css,'#login-b')
    @form_log_in = Element.new(:css, '#login')
    @input_log_in_email = Element.new(:css, '#login input[name="login"]')
    @input_log_in_password = Element.new(:css, '#login input[name="password"]')
    @button_log_in = Element.new(:css, '.button-block')
    @error_invalid_credentials = Element.new(:css, 'form[action="/login"] div.alert.alert-danger span.errorText')
  end

  def isVisible
    @button_start.isVisible
    @input_name_contact_us.isVisible
  end

  def load
    visit('/legacy')
  end

  def openSignUp
    @button_sign_up_landing.click
    @form_sign_up.isVisible
    @button_sign_up_close.isVisible
  end

  def enterSignUpDetails(email, password1, password2, projectName)
    @input_sign_up_email.send_keys(email)
    @input_sign_up_password.send_keys(password1)
    @input_sign_up_retry_password.send_keys(password2)
    @input_sign_up_project_name.send_keys(projectName)
  end

  def closeSignUp
    @button_sign_up_close.click
  end

  def openLogIn
    @button_log_in_landing.click
    @form_log_in.isVisible
  end
  
  def enterLogInDetails(email, password)
    @input_log_in_email.send_keys(email)
    @input_log_in_password.send_keys(password)
  end

  def selectLoginButton
    @button_log_in.click
  end

  def validateInvalidCredentialsError
    @error_invalid_credentials.isVisible
  end
  # def openTryNow
  #   @button_start.click
  #   @form_sign_up.isVisible
  #   @button_close_try_now.isVisible
  # end

  # def closeTryNow
  #   @button_close_try_now.click
  # end

  # def enterName(name)
  #   @input_name_contact_us.send_keys(name)
  # end

  # def clearName
  #   @input_name_contact_us.clear
  # end
end