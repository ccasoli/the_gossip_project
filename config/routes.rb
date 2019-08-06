Rails.application.routes.draw do
  get '/team', to: 'team#show'
  get '/contact', to: 'contact#show'
  get '/welcome/:id', to: 'welcome#show'
  resources :welcome, controller: 'welcome'
  get '/home', to: 'home#show'
  get '/gossip/:id', to: 'gossip#show'
  resources :gossip, controller: 'gossip'
  get '/user/:id', to: 'user#show'
  resources :user, controller: 'user'
end
