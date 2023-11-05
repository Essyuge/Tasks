class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
     rescue_from ActiveRecord::RecordNotFound, with: :invalid_record


private
    def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors.full_messages} , status: :unprocessable_entity
    end


    def invalid_record(error) #anytime when can't find the record with the given id we get the record not found exception.
    render json: {message: error.message}, status: :not_found
    end
end
