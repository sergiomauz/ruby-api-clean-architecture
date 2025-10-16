module Authors
  module Commands
    module CreateAuthor
      class CreateAuthorCommand
        attr_reader :name, :country, :biography

        def initialize(dto)
          @name = dto[:name]
          @country = dto[:country]
          @biography = dto[:biography]
        end

        def format_validation!
          errors = []

          if @name.nil? || (@name.length < 2 || @name.length > 150)
            errors << CustomValidationErrorVm.new(
              property_name: ErrorConstants::CREATE_AUTHOR_FORMAT00001.property_name,
              error_code: ErrorConstants::CREATE_AUTHOR_FORMAT00001.error_code,
              error_message: ErrorConstants::CREATE_AUTHOR_FORMAT00001.error_message
            )            
          end

          if @country.nil? || (@country.length != 2)
            errors << CustomValidationErrorVm.new(
              property_name: ErrorConstants::CREATE_AUTHOR_FORMAT00002.property_name,
              error_code: ErrorConstants::CREATE_AUTHOR_FORMAT00002.error_code,
              error_message: ErrorConstants::CREATE_AUTHOR_FORMAT00002.error_message
            )            
          end        

          if errors.any?
            raise CustomValidationError.new(message: "Error controlado", errors: errors, code: HttpStatus::CONFLICT)
          end

          errors
        end
      end
    end
  end
end