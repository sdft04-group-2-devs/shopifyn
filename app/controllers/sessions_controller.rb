class SessionsController < ApplicationController
  # include CurrentUserConcern
  skip_before_action :authorize
  #  skip_before_action :verify_authenticity_token

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      render json: {user: authorize}, status: :created
    else
      render json: { error: "Invalid email or password" }, status: :unauthorized
    end
  end

      # def logged_in
      #   if is_user_logged_in?
      #     render json: {
      #       logged_in: true,
      #       user: @current_user
      #     }, status: :ok
      #   else
      #     render json: {
      #       logged_in: false
      #     },
      #     status: :not_found
      #   end
      # end
      
      def logout
        session.delete :user_id
        head :no_content
      end

end
