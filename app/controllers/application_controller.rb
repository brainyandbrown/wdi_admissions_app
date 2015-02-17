class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

<<<<<<< HEAD
def current_user
    @current_user ||= User.find(session[:user_id])
end

def authenticate_user
  redirect_to 'login' unless current_user
end
=======
  def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # makes current_user available in our views
  helper_method(:current_user)

  def authenticate
    redirect_to '/login' unless current_user
  end
>>>>>>> 1c2d52acdac6f97c8e3e9464c1a5c9f86cbe7336

end
