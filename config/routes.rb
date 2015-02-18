Rails.application.routes.draw do

  root "sessions#new"

  get    '/login'  => 'sessions#new'
  post   '/login'  => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get    '/home'   => 'user#show'

  get '/home' => "users#show"

  resources :students
  resources :instructors
  resources :admissions

end
