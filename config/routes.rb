Rails.application.routes.draw do
  resources :customers, only: [:index, :create, :update, :destroy, :show]
  resources :users, only: [:index, :create, :update, :destroy, :show]
  resources :orders, only: [:index, :create, :update, :destroy, :show]
  resources :items, only: [:index, :create, :update, :destroy, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
