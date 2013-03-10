require 'sinatra/base'

class AddressBook < Sinatra::Base
  get '/' do
    'Hello World!'
  end
end

