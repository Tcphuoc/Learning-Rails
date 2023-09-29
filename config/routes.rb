Rails.application.routes.draw do
  root 'pages#home'
  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :products
  resources :users
end
