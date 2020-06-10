Rails.application.routes.draw do

  get '/signup' => 'dogs#new'
  post '/signup' => 'dogs#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'


  root 'application#welcome'
  
  resources :reservations
  resources :hotels
  resources :dogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
