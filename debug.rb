if Rails.env.development?
  require 'debug/session'
  Rails.logger.info "Starting debug session"
  debug_port = ENV.fetch('DEBUG_PORT', '3001').to_s
  DEBUGGER__.open(port: debug_port, host: "0.0.0.0")
end