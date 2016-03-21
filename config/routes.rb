Rails.application.routes.draw do

  root to: 'post#index'

  get '/signup' => 'users#new'



end
