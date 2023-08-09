class CartController < ApplicationController
  before_action :authorize_request
   # GET /cart
   def show
    render json: @current_user.cart, include: :cart_items, status: :ok
  end

  # PATCH /cart
  def update
    cart = @current_user.cart

    if cart.update(cart_params)
      render json: cart, include: :cart_items, status: :ok
    else
      render json: { error: cart.errors.full_messages.join(', ') }, status: :unprocessable_entity
    end
  end

  # DELETE /cart
  def destroy
    cart = @current_user.cart
    cart.destroy
    head :no_content
  end

  private

  def cart_params
    # Define permitted cart parameters if needed
    params.require(:cart).permit(:some_attribute)
  end
end
