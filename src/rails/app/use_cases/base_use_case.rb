class BaseUseCase
  def execute!(command)
    if command.respond_to?(:format_validation!)
      command.format_validation!
    end

    execute(command)
  end

  def execute(_command)
    raise NotImplementedError, "Debe implementar el método 'execute' en la subclase"
  end
end