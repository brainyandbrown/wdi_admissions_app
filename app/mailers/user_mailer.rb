class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email(student)
    @student = student
    @url = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome To GA!')
  end
end
