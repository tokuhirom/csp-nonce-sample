require 'sinatra'
require 'securerandom'

get '/' do
  @nonce = SecureRandom.base64()
  headers 'Content-Security-Policy' => "unsafe-inline; script-src 'nonce-#{@nonce}'"
  erb :index
end

