class ApplicationController < ActionController::Base
    include ActionController::Cookies
    protect_from_forgery with: :null_session
    before_action :authorize_request

    # def hello_world
    #     session[:count] = (session[:count] || 0) + 1
    #     render json: { count: session[:count] }
    # end

    def not_found
        render json: {error: 'not_found'}
    end

    private

    def authorize_request
        header = request.headers['Authorization']
        token = header.split.last if header

        begin
            @decoded = JWT.decode(token, Rails.application.secrets.secret_key_base)
            @current_user = User.find(@decoded[0]['user_id'])
        rescue ActiveRecord::RecordNotFound => e
            render json: {errors: e.mesage}, status: :unauthorized
        rescue JWT::DecodeError => e
            render json: {errors: e.message}, status: :unauthorized
        end
    end

  def encode_token(payload)
    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end

    # def encode_token(payload)
    #     JWT.encode(payload, Rails.application.secrets.secret_key_base)
    # end

    # def auth_header
    #     request.headers['Authorization']
    # end

    # def decoded_token
    #     token = auth_header
    #     if token
    #         begin
    #             JWT.decode(token, Rails.application.secrets.secret_key_base, true, algorithm: 'HS256') [0]
    #         rescue JWT::DecodeError
    #             nil
    #         end
    #     end
    # end

    # def current_user
    #     # if decoded_token
    #     #     user_id = decoded_token[0]['user_id']
    #     #     user = User.find_by(id: user_id)
    #     # end
    #     @current_user ||= User.find_by(id: decoded_token[:user_id]) if decoded_token
        
    # end

    # def logged_in?
    #     !!current_user
    # end

    # def authorized
    #     render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    # end
end
