class UsersController < ApplicationController
  skip_before_action :authorize, only: [:create, :index, :show, :get_cart]
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  
  def index
    @users = User.all
    render json: @users
  end

     # POST /users
  def create
    user = User.create!(user_params)
      cart = Cart.create(user: user)
      session[:user_id] = user.id
      render json: user, include: :carts, status: :created
  end

    # GET /logged_in
    def logged_in 
      # user =User.find_by(id: session[:user_id])
      # if user 
      #     render json: user, status: :ok
      # else 
      #     render json: {error: "Not authorized"}, status: :unauthorized
      # end
      render json: {user: authorize}
    end

    def show
      user = User.find(params[:id])
      render json: user, status: :ok
    end

     # PUT /users/:id
  def update
    user = User.find(params[:id])
    user.update!(user_params)
    render json: user, status: :ok
  end

     # DELETE /users/:id
  def destroy
    user = User.find(params[:id])
    user.destroy
    head :no_content
  end

  def current
    render json: @current_user, status: :ok
  end

   # GET /users/:id/cart
  def get_cart
    user = User.find(params[:id])
    cart = user.cart
    render json: cart, include: :cart_items, status: :ok
  end

    private

    def find_user
      @current_user = User.find_by!(id: params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { errors: 'User not found' }, status: :not_found
    end


    def user_params
      params.permit(:username, :email, :phone_no, :role, :profile_url, :password, :password_confirmation)
    end

    def render_not_found_response
      render json: {errors: ["User not found"]}, status: :not_found
    end

    def render_unprocessable_entity(exception)
      render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end
    #updating the email
    def update_email
      user = User.find(params[:id])
      user.update(email: params[:email])
      render json: user
    end
     #updating the username
     def update_username
      user = User.find(params[:id])
      user.update(username: params[:username])
      render json: user
    end

end
