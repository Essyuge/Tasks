class ApplicationController < ActionController::Base
    protect_from_forgery 
     before_action :authenticate_user
    
    include ActionController::Cookies

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
     rescue_from ActiveRecord::RecordNotFound, with: :invalid_record
    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) 
     end
private
    def authenticate_user
        render json: {errors: {user: "Not Authorized"}}, status: :unauthorized unless current_user
   end
    def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors.full_messages} , status: :unprocessable_entity
    end


    def invalid_record(error) #anytime when can't find the record with the given id we get the record not found exception.
    render json: {message: error.message}, status: :not_found
    end

end
