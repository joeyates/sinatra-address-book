require 'sinatra/base'
require 'slim'

class AddressBook < Sinatra::Base
  get '/' do
    slim :home
  end
end

