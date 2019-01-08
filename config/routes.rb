Rails.application.routes.draw do
  root 'pages#index'
  get '/home', to: 'pages#home', as: :home
  resources :users, only:[:new,:create,:update]
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout
  
end
