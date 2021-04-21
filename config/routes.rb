Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Blazer::Engine, at: "blazer"

  devise_for :users

  
  root 'pages#index'
  get 'pages/commercial'
  get 'pages/residential'
  get 'pages/quote'
  get 'pages/intervention'
  get 'pages/speech'
  get 'update_buildings', to: 'interventions#update_buildings'
  get 'update_battery', to: 'interventions#update_battery'
  get 'update_column', to: 'interventions#update_column'
  get 'update_elevator', to: 'interventions#update_elevator'
  get 'dropbox/auth_callback' => 'dropbox#auth_callback'


  resources :quotes
  resources :leads
  resources :interventions 
  
  post '/leads', to: 'leads#create'
  post '/interventions', to: 'interventions#create'

end

