Rails.application.routes.draw do
  resources :individual_clients, only: [:index, :show]
  resources :corporate_clients, only: [:index, :show]
  resources :addresses, only: [:index, :show]
end
