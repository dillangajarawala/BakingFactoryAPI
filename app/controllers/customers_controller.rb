class CustomersController < ApplicationController
  before_action :set_customer, only: [:show]
  
  def index
    @customers = Customer.all
    render json: @customers
  end

  def show
    render json: @customer
  end

  private
  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email, :phone, :active)
  end

end