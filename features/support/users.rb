require 'date'
module Users
  def Users.fill_sign_up_form
    @fill_sign_up_form ||= User.new(args = {
      email: 'invalid', 
      password:'parole', 
      password2:'parole2', 
      project:'projekts'
    })
    @fill_sign_up_form
  end

  def Users.submit_invalid_log_in_form
    @submit_invalid_log_in_form ||= User.new(args = {email: 'epasts@pasts.lv', password: 'parole123'})
    @submit_invalid_log_in_form
  end

  class User
    attr_reader :name, :email, :message, :password, :password2, :project
    def initialize(args = {})
      defaults = {
        name: DateTime.now.strftime('%Q'), 
        email: DateTime.now.strftime('%Q')+'@test.com', 
        message: DateTime.now,
        password: DateTime.now,
        password2: password,
        project: DateTime.now.strftime('%Q')
      }

      args = defaults.merge(args)
      @name = args[:name]
      @email = args[:email]
      @password = args[:password]
      @password2 = args[:password2]
      @project = args[:project]
      @message = args[:message]
    end
  end
end