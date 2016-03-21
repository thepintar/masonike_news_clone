Rails.application.routes.draw do

  root to: 'post#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post 'users' => 'users#create'


end
