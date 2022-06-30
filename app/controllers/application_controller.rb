class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    private

    def render_not_found_response(exeption)
        render json: { error: "#{exeption.model} not found" }, status: :not_found
    end
end
