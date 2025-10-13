require "singleton"

class EmailSender
  include Singleton

  def initialize
    puts "Email configuration loaded..."
  end

  def send_email
    puts "Email sent..."
  end
end
