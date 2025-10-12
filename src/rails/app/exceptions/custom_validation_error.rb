class CustomValidationError < StandardError
  attr_reader :message, :code, :details

  def initialize(message:, errors: nil, code:)
    @message = message
    @code = code

    if errors && errors.any?
      grouped = {}

      errors.each do |err|
        grouped[err.property_name] ||= []
        grouped[err.property_name] << {
          error_code: err.error_code,
          error_message: err.error_message
        }
      end

      @details = grouped
      super(grouped.to_s)
    else
      @details = {}
      super(message)
    end
  end
end