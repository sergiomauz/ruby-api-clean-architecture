class CustomValidationErrorVm
  attr_accessor :property_name, :error_code, :error_message

  def initialize(property_name:, error_code:, error_message:)
    @property_name = property_name
    @error_code = error_code
    @error_message = error_message
  end
end  