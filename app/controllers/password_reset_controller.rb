class PasswordResetController < ApplicationController
    def passwordreset
        user = User.find_by(email: params[:email])
    
        if user
    
          render json: { message: 'Password reset instructions sent.' }, status: :ok
        else
          render json: { error: 'User not found.' }, status: :not_found
        end
      end
end
