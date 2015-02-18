class SessionsController < ApplicationController

  def new

  end

  def create
    email    = params[:email]
    password = params[:password]
    user     = User.find_by email: email

    if user && user.authenticate(password)
      session[:user_id] = user.id
      #reroute to appropriate controller bas one user.user_type
      redirect_to '/home'
    else
      redirect_to '/login'
    end

  end

end
