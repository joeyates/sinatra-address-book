require 'sinatra/base'
require 'slim'

class AddressBook < Sinatra::Base
  get '/' do
    slim :home
  end

  # Respond with a string
  get '/hello' do
    'Hello!'
  end
end

