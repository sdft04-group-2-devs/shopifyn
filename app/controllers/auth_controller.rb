# class AuthController < ApplicationController
#     # skip_before_action :authorized, only: [:create]
#     before_action :authorize_request, except: :login
#     rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found
    

#     # POST /login
#   def login
#     @user = User.find_by(email: params[:email])
#     #User#authenticate comes from BCrypt
#     if @user&.authenticate(params[:password])
#       # encode token comes from ApplicationController
#       token = JsonWebToken.encode(user_id: @user.id)
#       time =Time.now + 24.hours.to_i
#       render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"),
#         username: @user  }, status: :accepted
#     else
#       render json: { message: 'Invalid email or password' }, status: :unauthorized
#     end
#   end

#   private

#   def user_login_params
#     # params { user: {username: 'Chandler Bing', password: 'hi' } }
#     params.permit( :email, :password)
#   end
  


# end
