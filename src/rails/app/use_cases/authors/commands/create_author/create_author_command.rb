module Authors
  module Commands
    module CreateAuthor
      class CreateAuthorCommand
        def initialize(dto)
          @name = dto[:name]
          @country = dto[:country]
          @biography = dto[:biography]
        end

        def format_validation
          errors = []

          errors
        end
      end
    end
  end
end