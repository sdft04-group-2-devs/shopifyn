class ApplicationController < ActionController::Base
    include ActionController::Cookies
    protect_from_forgery with: :null_session

    def hello_world
        session[:count] = (session[:count] || 0) + 1
        render json: { count: session[:count] }
    end
end
