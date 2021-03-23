Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Blazer::Engine, at: "blazer"

  devise_for :users

  
  root 'pages#index'
  get 'pages/commercial'
  get 'pages/residential'
  get 'pages/quote'
  
  get 'pages/intervention'
  resources :interventions
  resources :quotes
  
  resources :leads
  post '/leads', to: 'leads#create'

  get 'dropbox/auth_callback' => 'dropbox#auth_callback'

  get 'customer', to: 'intervention#customer'
  
  post 'intervention', to: 'intervention#create'


end

