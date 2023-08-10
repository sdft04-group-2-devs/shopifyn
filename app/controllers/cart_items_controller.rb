class CartItemsController < ApplicationController
  # before_action :authorize_request

  # POST /cart_items
  def create
    current_user = User.find_by(id: session[:user_id])
    cart = current_user.cart
    product = Product.find(params[:product_id])

    cart_item = cart.cart_items.build(product: product, quantity: params[:quantity])

    if cart_item.save
      render json: cart_item, status: :created
    else
      render json: { error: cart_item.errors.full_messages.join(', ') }, status: :unprocessable_entity
    end
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
    params.require(:cart_item).permit(:quantity) # Add other permitted attributes if needed
  end
end
