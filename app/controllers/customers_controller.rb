class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :update, :destroy]

  def index
    customers = Customer.all

    render json: customers
  end

  def show
    customer = Customer.find(params[:id])
    render json: customer
  end

  def create
    customer = Customer.new(customer_params)

    if customer.save
      render json: customer, except: [:created_at, :updated_at]
    else
      render json: customer.errors, status: :unprocessable_entity
    end
  end
  
  def update
    if customer.update(customer_params)
      render json: customer_params
    else
      render json: customer.errors, status: :unprocessable_entity
    end
  end

  def destroy
    customer.destroy
  end

  private

  def set_customer
    customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:id, :name, :email, :phone, :credit_card, :user_id)
  end
end
