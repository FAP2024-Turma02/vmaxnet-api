Rails.application.routes.draw do

  devise_for :users
  resources :endereco, only: [:index]
  
  mount_devise_token_auth_for 'User', at: 'auth'
end
