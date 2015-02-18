Rails.application.routes.draw do

  root "sessions#new"

  get    '/login'  => 'sessions#new'
  post   '/login'  => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get    '/home'   => 'user#show'

  #get "/home" => 'students#home'

<<<<<<< HEAD
=======
  #this will change depending on user type
  get '/home' => "users#show"

  resources :students
  resources :instructors
  resources :admissions

>>>>>>> 7ec7e5d1eb27871f1a3e4fb155df9b1df110641d
end
