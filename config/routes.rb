Rails.application.routes.draw do

  root "sessions#new"

<<<<<<< HEAD
  get    '/login'  => 'sessions#new'
  post   '/login'  => 'sessions#create'
=======
  get    '/login' => "sessions#new"
  post   '/login' => "sessions#create"
>>>>>>> 1c2d52acdac6f97c8e3e9464c1a5c9f86cbe7336
  delete '/logout' => 'sessions#destroy'
  get    '/home'   => 'students#index'

  #get "/home" => 'students#home'

  #this will change depending on user type
  get '/home' => "users#show"

end
