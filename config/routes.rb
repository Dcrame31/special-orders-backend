Rails.application.routes.draw do
  resources :customers
  resources :users, only: [:index, :create, :update, :destroy, :show]
  resources :orders 
  resources :items, only: [:index, :create, :update, :destroy, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
