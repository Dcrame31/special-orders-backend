Rails.application.routes.draw do
  get 'customer/name:string'
  get 'customer/email:string'
  get 'customer/phone:number'
  get 'customer/credit_card:number'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
