class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler

  def issue_token(data)
    JWT.encode(data, secret)
  end

  def current_user
    token = request.headers['Authorization']
    decoded_token = decode_token(token)
    id = decoded_token['id']
    User.find_by(id: id)
  end

  def decode_token(token)
    begin
    JWT.decode(token, secret).first
    rescue JWT::DecodeError
    {}
    end
  end

  def secret
    'shhh'
  end
  #
  #
  # config.middleware.insert_before 0, Rack::Cors do
  #     allow do
  #       origins '*'
  #       resource '*', headers: :any, methods: [:get, :post, :options]
  #     end
  #   end
end
