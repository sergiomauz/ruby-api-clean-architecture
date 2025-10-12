class AuthorsController < ApplicationController
  def create
    command = Authors::Commands::CreateAuthor::CreateAuthorCommand.new(create_author_params)

    c = create_author_params

    errors = CustomValidationErrorVm.new(
      property_name: "email", 
      error_code: "missing", 
      error_message: "Email is required"
    )
    # errors = [
      
    #   CustomValidationErrorVm.new(property_name: "password", error_code: "too_short", error_message: "Password must be at least 6 characters")
    # ]


    render json: c, status: :ok
  end
  
  def update
    id = params[:id]
    u = update_author_params
    render json: u, status: :ok
  end

  private

  def create_author_params
    params.require(:author).permit(:name, :country, :biography)
  end

  def update_author_params
    params.require(:author).permit(:name, :country, :biography)
  end  
end
