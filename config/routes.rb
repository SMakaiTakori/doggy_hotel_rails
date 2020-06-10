Rails.application.routes.draw do
  
  root 'application#welcome'
  
  resources :reservations
  resources :hotels
  resources :dogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
