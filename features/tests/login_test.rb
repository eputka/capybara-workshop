class LoginTest
  def initialize(pages)
    @pages = pages
  end

  def load_home_page
    @pages.page_home.load
    @pages.page_home.isVisible
  end

  def open_sign_up_view
    @pages.page_home.openSignUp
  end

  def fill_sign_up_form
    user = Users.fill_sign_up_form
    @pages.page_home.enterEmail(user.email)
    @pages.page_home.enterPassword(user.password)
    @pages.page_home.enterRetryPassword(user.password2)
    @pages.page_home.enterProject(user.project)
  end

  def close_sign_up_form
    @pages.page_home.closeSignUp
  end

  def open_log_in_view
    @pages.page_home.openLogIn
  end

  def submit_invalid_log_in_form
    user = Users.submit_invalid_log_in_form
    @pages.page_home.enterLoginEmail(user.email)
    @pages.page_home.enterLoginPassword(user.password)
    @pages.page_home.selectLoginButton
  end

  def validate_error_message
    @pages.page_home.validateInvalidCredentialsError
  end
end