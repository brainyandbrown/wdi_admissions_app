class SessionsController < ApplicationController

  def create
  email    = params[:email]
  password = params[:password]
  student = Student.find_by(email: email)

  if student && student.authenticate(pass)
    session[:student_id] = student.student_id
    redirect_to '/home'

  else
    redirect_to '/login'
  end

end
