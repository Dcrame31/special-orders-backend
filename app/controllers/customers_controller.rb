class CustomersController < ApplicationController
  def index
    customers = Customer.all

    render json: customers
  end

  def show
    render json: customers
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
  end

  def destroy
  end

  private

  def set_customer
    customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:name, :email, :phone, :credit_card, :user_id)
  end
end
