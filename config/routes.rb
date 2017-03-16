Rails.application.routes.draw do
  
  root to: 'static_pages#home'

  get    'login'      => 'sessions#new'
  post   'login'      => 'sessions#create'
  delete 'logout'     => 'sessions#destroy'
  
  resources :users
  resources :account_activation, only: :edit
  resources :forms
  resources :carotid_forms
  resources :ue_arterial_forms
  resources :ue_venous_forms
  resources :renal_forms
  resources :mesenteric_forms
  resources :hepatic_forms
  resources :le_arterial_forms
  resources :le_venous_forms
  resources :technologist
end
