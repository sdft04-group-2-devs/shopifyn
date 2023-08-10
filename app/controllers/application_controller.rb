class ApplicationController < ActionController::Base
    include ActionController::Cookies
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    before_action :authorize
    skip_before_action :verify_authenticity_token
   

    def is_user_logged_in?
        !!session[:user_id]
    end

    def authorize
        @current_user ||= User.find_by(id: session[:user_id]) 
    end

    private

    def render_unprocessable_entity(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end
    
        
end
