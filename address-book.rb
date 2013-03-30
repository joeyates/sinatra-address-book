require 'sinatra/base'
require 'slim'

class AddressBook < Sinatra::Base
  configure do
    enable :inline_templates
  end

  # The home page
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

  get '/inline_template' do
    slim :my_inline_template
  end
end

__END__

@@my_inline_template
h1 This is an inline template

