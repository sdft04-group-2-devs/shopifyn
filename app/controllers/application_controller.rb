class ApplicationController < ActionController::Base
    include ActionController::Cookies
    protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token
    # before_action :authorized
    
    # include ActionController::Cookies

    # def hello_world
    #     session[:count] = (session[:count] || 0) + 1
    #     render json: { count: session[:count] }
    # end

    def encode_token(payload)
        JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        token = auth_header
        if token
            begin
                JWT.decode(token, Rails.application.secrets.secret_key_base, true, algorithm: 'HS256') [0]
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_user
        # if decoded_token
        #     user_id = decoded_token[0]['user_id']
        #     user = User.find_by(id: user_id)
        # end
        @current_user ||= User.find_by(id: decoded_token[:user_id]) if decoded_token
        
    end

    def logged_in?
        !!current_user
    end

    def authorized
        render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end
end
