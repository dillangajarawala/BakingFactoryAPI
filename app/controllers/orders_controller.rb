class OrdersController < ApplicationController
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