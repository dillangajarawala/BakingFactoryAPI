class OrdersController < ApplicationController

  swagger_controller :orders, "Order Management"

  swagger_api :index do
    summary "Fetches all Orders"
    notes "This lists all the orders"
  end

  swagger_api :show do
    summary "Shows one Order"
    param :path, :id, :integer, :required, "Order ID"
    notes "This lists details of one order"
    response :not_found
  end


  before_action :set_order, only: [:show]
  
  def index
    @all_orders = Order.all
    render json: @all_orders
  end

  def show
    render json: @order
  end

  private
  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:address_id, :customer_id, :grand_total)
  end

end