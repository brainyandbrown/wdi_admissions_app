Rails.application.routes.draw do

  root "sessions#new"

  get    '/login'  => 'sessions#new'
  post   '/login'  => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get    '/home'   => 'user#show'

  #get "/home" => 'students#home'

  #this will change depending on user type
  get '/home' => "users#show"
  resources :students
  resources :instructors
  resources :admissions
end
