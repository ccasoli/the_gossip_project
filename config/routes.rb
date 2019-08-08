Rails.application.routes.draw do
  get 'comment/show'
  root 'home#index'
  resources :login
  resources :home
  resources :team
  resources :contact
  resources :welcome
  resources :gossip 
  resources :comments
  resources :user
  resources :city
end
