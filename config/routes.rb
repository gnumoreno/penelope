Rails.application.routes.draw do

  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/about'
  get 'static_pages/news'
  get 'static_pages/contact'
  get 'password_resets/new'
  get 'password_resets/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :sessions
  resources :books
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]

  root 'sessions#new'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
