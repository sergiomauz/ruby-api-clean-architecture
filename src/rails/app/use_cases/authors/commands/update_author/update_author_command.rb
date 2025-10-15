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

          if errors.any?
            raise CustomValidationError.new(message: "Error controlado", errors: errors, code: HttpStatus::CONFLICT)
          end

          errors
        end
      end
    end
  end
end