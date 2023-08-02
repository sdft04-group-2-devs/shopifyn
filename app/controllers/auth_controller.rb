class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]
    rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found
    

  def create
    user = User.find_by(email: params[:email])
    #User#authenticate comes from BCrypt
    if user && user.authenticate(params[:password])
      # encode token comes from ApplicationController
      token = encode_token(user_id: user.id)
      render json: { user: UserSerializer.new(user), jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid email or password' }, status: :unauthorized
    end
  end

  private

  # def user_login_params
  #   # params { user: {username: 'Chandler Bing', password: 'hi' } }
  #   params.permit( :email, :password_digest)
  # end
  


end
