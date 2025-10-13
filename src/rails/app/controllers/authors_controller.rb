class AuthorsController < ApplicationController
  def create
    command = Authors::Commands::CreateAuthor::CreateAuthorCommand.new(create_author_params)
    vm = Authors::Commands::CreateAuthor::CreateAuthorUseCase.new.execute!(command)

    render json: vm, status: :ok
  end
  
  def update
    command = Authors::Commands::UpdateAuthor::UpdateAuthorCommand.new(params[:id], update_author_params)
    vm = Authors::Commands::UpdateAuthor::UpdateAuthorUseCase.new.execute!(command)

    render json: vm, status: :ok
  end

  private

  def create_author_params
    params.require(:author).permit(:name, :country, :biography)
  end

  def update_author_params
    params.require(:author).permit(:name, :country, :biography)
  end  
end
