Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Blazer::Engine, at: "blazer"

  devise_for :users

  
  root 'pages#index'
  get 'pages/commercial'
  get 'pages/residential'
  get 'pages/quote'
  get '/pages/intervention'
  
  resources :quotes
  
  resources :leads
  post '/leads', to: 'leads#create'
  
  get 'dropbox/auth_callback' => 'dropbox#auth_callback'
  
  
  
  resources :interventions 
  post '/interventions', to: 'interventions#create'
  
  get 'update_buildings', to: 'interventions#update_buildings'
  get 'update_battery', to: 'interventions#update_battery'
  get 'update_column', to: 'interventions#update_column'
  get 'update_elevator', to: 'interventions#update_elevator'
  
    
  


end

