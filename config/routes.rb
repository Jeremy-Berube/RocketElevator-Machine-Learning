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
  get 'audio_sequence_1', to: 'speech#audio_sequence_1'
  get 'audio_sequence_2', to: 'speech#audio_sequence_2'
  get 'audio_sequence_3', to: 'speech#audio_sequence_3'
  get 'audio_sequence_4', to: 'speech#audio_sequence_4'
  get 'audio_sequence_5', to: 'speech#audio_sequence_5'
  get 'audio_sequence_6', to: 'speech#audio_sequence_6'
  get 'audio_sequence_7', to: 'speech#audio_sequence_7'
  get 'audio_sequence_8', to: 'speech#audio_sequence_8'
  get 'audio_sequence_9', to: 'speech#audio_sequence_9'
  get 'audio_sequence_10', to: 'speech#audio_sequence_10'
  get 'audio_recognizer_1', to: 'speech#audio_recognizer_1'
  get 'audio_recognizer_2', to: 'speech#audio_recognizer_2'
  get 'audio_recognizer_3', to: 'speech#audio_recognizer_3'
  get 'audio_recognizer_4', to: 'speech#audio_recognizer_4'
  get 'audio_recognizer_5', to: 'speech#audio_recognizer_5'
  get 'audio_recognizer_6', to: 'speech#audio_recognizer_6'
  get 'audio_recognizer_7', to: 'speech#audio_recognizer_7'
  get 'audio_recognizer_8', to: 'speech#audio_recognizer_8'
  get 'audio_recognizer_9', to: 'speech#audio_recognizer_9'
  get 'audio_recognizer_10', to: 'speech#audio_recognizer_10'

 
  
  resources :quotes
  resources :leads
  resources :interventions 
  
  post '/leads', to: 'leads#create'
  post '/interventions', to: 'interventions#create'
end

