Rails.application.routes.draw do
  resources :contacts, only: [:index, :show]
end
