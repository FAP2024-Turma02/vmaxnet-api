Rails.application.routes.draw do
  resources :addresses, only: [:index, :show]
end
