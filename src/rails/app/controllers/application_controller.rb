class ApplicationController < ActionController::API
  rescue_from StandardError, with: :handle_internal_error
  # rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found
  # rescue_from ActiveRecord::RecordInvalid, with: :handle_unprocessable_entity

  private

  # def handle_not_found(exception)
  #   render_error(404, 'Not Found', exception)
  # end

  # def handle_unprocessable_entity(exception)
  #   render_error(422, 'Unprocessable Entity', exception)
  # end

  def handle_internal_error(exception)
    render_error(exception.code, exception.message, exception.details)
  end

  def render_error(status, title, details)
    # {
    #   "exceptions": {
    #     "name": [
    #       {
    #         "error_code": "CreateCategory-F00001",
    #         "error_message": "'name' must have between 3 and 75 characters."
    #       }
    #     ],
    #     "description": [
    #       {
    #         "error_code": "CreateCategory-F00002",
    #         "error_message": "'description' must have between 3 and 150 characters."
    #       }
    #     ]
    #   }
    # }

    render json: {
      details: details
    }.compact, status: status
  end
end
