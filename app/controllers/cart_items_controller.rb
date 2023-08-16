class CartItemsController < ApplicationController
  # before_action :authorize_request

  # POST /cart_items
  def create
    cart_item = CartItem.create(cart_item_params)
    if cart_item
      render json: cart_item, status: :created
    else
      render json: { error: cart_item.errors.full_messages.join(', ') }, status: :unprocessable_entity
    end
  end

  # GET /cart_items
  def index
    # user_id = params[:user_id]
    # cart_items = CartItem.where(user_id: user_id)
    cart_items = CartItem.all
  
    render json: cart_items, status: :ok
  end

  # PATCH /cart_items/:id
  def update
    cart_item = @current_user.cart.cart_items.find(params[:id])

    if cart_item.update(cart_item_params)
      render json: cart_item, status: :ok
    else
      render json: { error: cart_item.errors.full_messages.join(', ') }, status: :unprocessable_entity
    end
  end

  # DELETE /cart_items/:id
  def destroy
    cart_item = @current_user.cart.cart_items.find(params[:id])
    cart_item.destroy
    head :no_content
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:user_id, :product_id, :quantity)
  end
end
