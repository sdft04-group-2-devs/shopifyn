class UsersController < ApplicationController
  before_action :authorize_request, except: [:create, :index]
  before_action :find_user, except: %i[create index]
  
  def index
    @users = User.all
    render json: @users
  end

     # POST /users
  def create
    user = User.new(user_params)
    if user.save
      cart = Cart.create(user: user)
      token = encode_token(user_id: user.id)
      render json: { token: token }, status: :created
    else
      render json: { error: user.errors.full_messages.join(', ') }, status: :unprocessable_entity
    end
  end

    # GET /users/:id
  def show
    render json: @current_user, status: :ok
  end

     # PUT /users/:id
  def update
    if @current_user.update(user_params)
      render json: @current_user, status: :ok
    else
      render json: { error: @current_user.errors.full_messages.join(', ') }, status: :unprocessable_entity
    end
  end

     # DELETE /users/:id
  def destroy
    @current_user.destroy
    head :no_content
  end

    private

    def find_user
      @user = User.find_by!(id: params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { errors: 'User not found' }, status: :not_found
    end


    def user_params
      params.permit(:username, :email, :phone_no, :role, :profile_url, :password, :confirm_password)
    end


end
