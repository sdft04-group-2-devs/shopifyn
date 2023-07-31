class OrderItemsController < ApplicationController

  def index
    order_items = OrderItem.all
    render json: order_items
  end
  def create
    @order_item = OrderItem.create(order_item_params)

    if @order_item
      render json: @order_item, status: :created
    else
      render json: @order_item.errors, status: :unprocessable_entity
    end
  end

  def show
    @order_item = OrderItem.find(params[:id])
    render json: @order_item
  end

  def update
    @order_item = OrderItem.find(params[:id])

    if @order_item.update(order_item_params)
      render json: @order_item
    else
      render json: @order_item.errors, status: :unprocessable_entity
    end
  end

  private

  def order_item_params
    params.permit(:product_id, :user_id, :address, :order_quantity)
  end
end