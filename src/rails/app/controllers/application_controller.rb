class ApplicationController < ActionController::API
  rescue_from StandardError, with: :handle_standard_error
  
  private

  def handle_standard_error(exception)
    # Invalid format and content
    if exception.respond_to?(:code) && [HttpStatus::CONFLICT, HttpStatus::UNPROCESSABLE_ENTITY].include?(exception.code)
      render json: {
        exceptions: exception.details
      }.compact, status: exception.code
      return
    end

    # Invalid JSON format
    if exception.instance_of?(ActionDispatch::Http::Parameters::ParseError)
      render json: {
        message: "Invalid JSON format, check out the documentation and fix it.",
      }.compact, status: HttpStatus::BAD_REQUEST
      return
    end

    # Unhandled error
    render json: {
      message: "Server error, communicate with administrator and try it again later."
    }.compact, status: HttpStatus::INTERNAL_SERVER_ERROR
  end
end
