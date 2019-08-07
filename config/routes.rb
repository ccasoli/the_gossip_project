Rails.application.routes.draw do
  root 'home#index'
  resources :login
  resources :home
  resources :team
  resources :contact
  resources :welcome
  resources :gossip
  resources :user
  resources :city
end
