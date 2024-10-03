Rails.application.routes.draw do
  devise_for :client_users
  mount_devise_token_auth_for 'User', at: 'auth'

  
  #devise_for :users
  
  #devise_for :client_accounts

  resources :endereco, only: [:index]
  
 
end
