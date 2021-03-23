Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Blazer::Engine, at: "blazer"

  devise_for :users

  
  root 'pages#index'
  get 'pages/commercial'
  get 'pages/residential'
  get 'pages/quote'
  
  get 'pages/intervention'
  resources :quotes
  
  resources :leads
  post '/leads', to: 'leads#create'
  
  get 'dropbox/auth_callback' => 'dropbox#auth_callback'
  
  post 'interventions', to: 'interventions#create'
  
  resources :interventions 
  
  get 'update_buildings', to: 'interventions#update_buildings'
  
    
  


end

