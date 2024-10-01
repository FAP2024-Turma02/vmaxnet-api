Rails.application.routes.draw do
  #devise_for :users
  
  #devise_for :client_accounts

  resources :endereco, only: [:index]
  
  mount_devise_token_auth_for 'User', at: 'auth'

  mount_devise_token_auth_for 'ClientAccount', at: 'auth'
  as :client_account do
    # Define routes for ClientAccount within this block.
  end
end
