Rails.application.routes.draw do
  get 'topics/new', to: 'topics#new'
  get 'sessions/new', to: 'sessions#new'

  root 'pages#index'
  get 'pages/help'
  
  get '/login', to: 'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  resources :topics
  
  get 'favorites/index', to: 'favorites#index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
end
