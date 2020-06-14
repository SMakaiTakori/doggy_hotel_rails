Rails.application.routes.draw do

  get '/signup' => 'dogs#new'
  post '/signup' => 'dogs#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/auth/google_oauth2/callback' => 'sessions#omniauth'

  root 'application#welcome'  
  
  resources :reservations
  resources :hotels, only: [:index] 
  resources :dogs, only: [:new, :create, :show]

  resources :hotels do
    resources :reservations 
  end

  resources :dogs do
    resources :reservations
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
