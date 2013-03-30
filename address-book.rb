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

  # Pass a parameter to a template
  get '/template_parameter' do
    some_value = 'Got this from the handler'
    slim :template_parameter, locals: {some_value: some_value}
  end
end

