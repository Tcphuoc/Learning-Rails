Rails.application.routes.draw do
  root   'pages#home'
  get    '/home',   to: 'pages#home'
  get    '/about',  to: 'pages#about'
  get    '/signup', to: 'users#new'
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get    '/users',  to: 'users#index'
  resources :products
  resources :users
  resources :account_activations, only: [:edit]
end
