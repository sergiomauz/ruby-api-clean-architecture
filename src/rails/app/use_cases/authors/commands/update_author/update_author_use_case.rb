module Authors
  module Commands
    module UpdateAuthor
      class UpdateAuthorUseCase < BaseUseCase

        def initialize(email_service: EmailSender.instance)
          @email_service = email_service
          puts "Email sender started.."
        end

        def execute(command)
          @email_service.send_email

          command
        end
      end
    end
  end
end