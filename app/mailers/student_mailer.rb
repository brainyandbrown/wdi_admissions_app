class StudentMailer < ActionMailer::Base

  default :from => "ambethoney@yahoo.com"
  layout 'mailer'


  def welcome_email(student)
    @url  = 'http://google.com'
    mail(to: student.email,
        subject: 'Welcome to General Assembly!')
  end
end

