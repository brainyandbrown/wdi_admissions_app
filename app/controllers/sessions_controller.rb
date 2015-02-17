class SessionsController < ApplicationController

<<<<<<< HEAD
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
=======
def new

end

def create
  email    = params[:email]
  password = params[:password]
  user     = User.find_by email: email

  if user && user.authenticate(password)
    session[:user_id] = user.id
    redirect_to '/home'
  else
    redirect_to '/login'
  end

end
>>>>>>> 1c2d52acdac6f97c8e3e9464c1a5c9f86cbe7336

end
