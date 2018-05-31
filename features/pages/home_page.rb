class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    # @button_start = Element.new(:css, '#start_button')
    # @form_sign_up = Element.new(:css, '#signup')
    # @button_close_try_now = Element.new(:css, '#signup .closecross')
    # @input_name_contact_us = Element.new(:css, '#name')
    # @input_email_contact_us = Element.new(:css, '#email')
    # @input_message_contact_us = Element.new(:css, '#contactus-message')

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
    
    def isVisible
      @button_start.isVisible
      @input_name_contact_us.isVisible
    end
  
    def load
      visit('/legacy')
    end
  
  ### Sign Up actions: BEGINING
    ### Sign Up Inputs
    def openSignUp
      @button_sign_up_landing.click
      @form_sign_up.isVisible
      @button_sign_up_close.isVisible
    end
  
    def enterEmail(email)
      @input_sign_up_email.send_keys(email)
    end

    def enterPassword(password)
      @input_sign_up_password.send_keys(password)
    end

    def enterRetryPassword(password2)
      @input_sign_up_retry_password.send_keys(password2)
    end

    def enterProject(project)
      @input_sign_up_project_name.send_keys(project)
    end
    ###

    def closeSignUp
      @button_sign_up_close.click
    end
  #### Sign Up actions: END


    def openLogIn
      @button_log_in_landing.click
      @form_log_in.isVisible
    end
    
    def enterLoginEmail(email)
      @input_log_in_email.send_keys(email)
    end
  
    def enterLoginPassword(password)
      @input_log_in_password.send_keys(password)
    end

    def selectLoginButton
      @button_log_in.click
    end
  
    def validateInvalidCredentialsError
      @error_invalid_credentials.isVisible
    end
  end
end