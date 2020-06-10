Rails.application.routes.draw do

  get '/signup' => 'dogs#new'
  post '/signup' => 'dogs#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  root 'application#welcome'
  
  resources :reservations
  resources :hotels
  resources :dogs

  resources :dogs do
    resources :reservations
  end

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
