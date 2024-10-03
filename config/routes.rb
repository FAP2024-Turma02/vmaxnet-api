Rails.application.routes.draw do

  devise_for :users
  resources :physical_clients, only: [:index, :show]
  resources :corporate_clients, only: [:index, :show]
  resources :enderecos, only: [:index, :show]
  
  # mount_devise_token_auth_for 'User', at: 'auth'
end
