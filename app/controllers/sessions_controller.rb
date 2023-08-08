class SessionsController < ApplicationController
  # before_action :authorize_request, except: [:create]

    def create
        user = User.find_by(email: params[:email])
        puts "User: #{user}"
    
        if user&.authenticate(params[:password])
          token = encode_token(user_id: user.id)
          render json: { token: token }, status: :ok
        else
          puts "Invalid email or password: #{params[:email]}"
          render json: { error: 'Invalid email or password' }, status: :unauthorized
        end
      end
      
      def destroy
        session.delete :user_id
        head :no_content
      end

end
