Rails.application.routes.draw do
  root 'session#new'
  resources :login
  resources :home
  resources :team
  resources :contact
  resources :welcome
  resources :gossip do
    resources :comments
  end
  resources :user
  resources :city
  resources :session
end
