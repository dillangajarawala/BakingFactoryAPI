class CustomersController < ApplicationController

  swagger_controller :customers, "Customer Management"

  swagger_api :index do
    summary "Fetches all Customers"
    notes "This lists all the customers"
  end

  swagger_api :show do
    summary "Shows one Customer"
    param :path, :id, :integer, :required, "Customer ID"
    notes "This lists details of one customer"
    response :not_found
  end


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