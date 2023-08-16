class CartsController < ApplicationController
  # before_action :authorize_request, except: :index

  # GET /carts
  def index
    carts = Cart.all
    render json: carts, include: :cart_items, status: :ok
  end
   # GET /cart
   def show
    current_user = User.find_by(id: params[:user_id])
    render json: current_user.cart, include: :cart_items, status: :ok
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

  # def cart_params
  #   # Define permitted cart parameters if needed
  #   params.require(:cart).permit(:)
  # end
end
