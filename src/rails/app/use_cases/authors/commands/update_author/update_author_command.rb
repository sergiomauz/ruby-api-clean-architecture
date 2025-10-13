module Authors
  module Commands
    module UpdateAuthor
      class UpdateAuthorCommand
        attr_reader :id, :name, :country, :biography

        def initialize(id, dto)
          @id = id
          @name = dto[:name]
          @country = dto[:country]
          @biography = dto[:biography]
        end

        def format_validation!
          errors = []

          # errors = [
          #   CustomValidationErrorVm.new(property_name: "email", error_code: "missing", error_message: "Email is required"),
          #   CustomValidationErrorVm.new(property_name: "password", error_code: "too_short", error_message: "Password must be at least 6 characters")
          # ]

          if errors.any?
            raise CustomValidationError.new(message: "Error controlado", errors: errors, code: HttpStatus::CONFLICT)
          end

          errors
        end
      end
    end
  end
end