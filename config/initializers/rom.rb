# frozen_string_literal: true

ROM::Rails::Railtie.configure do |config|
  config.gateways[:default] = [
    :sql,
    ENV.fetch('DATABASE_URL'),
    { extensions: [] }
  ]
end
