class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler
  #
  #
  # config.middleware.insert_before 0, Rack::Cors do
  #     allow do
  #       origins '*'
  #       resource '*', headers: :any, methods: [:get, :post, :options]
  #     end
  #   end
end
