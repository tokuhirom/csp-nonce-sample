require 'sinatra'
require 'securerandom'

get '/' do
  @nonce = SecureRandom.base64()
  headers 'Content-Security-Policy' => "script-src 'nonce-#{@nonce}'"
  erb :index
end

