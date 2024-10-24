Rails.application.routes.draw do
  resources :corporate_clients, only: [:index, :show]
  resources :individual_clients, only: [:index, :show]
  resources :clients, only: [:index, :show]
  resources :addresses, only: [:index, :show]
end
