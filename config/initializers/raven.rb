require 'raven'

Raven.configure do |config|
  config.dsn = ENV["SENTRY_API_KEY"] || ''
end
