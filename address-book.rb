require 'sinatra/base'
require 'slim'

Slim::Engine.default_options[:pretty] = true

class AddressBook < Sinatra::Base
  configure do
    enable :inline_templates
  end

  # Always create a CSRF token
  before do
    session[:csrf] ||= Rack::Protection::Base.new(self).random_string
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

  ########################################
  # POST: Protecting from CSRF attacks

  # A form with CSRF protection
  get '/username' do
    slim :username, locals: {username: 'myuser'}
  end

  # Receive a POST - this gets through if the CSRF token is correct
  post '/username' do
    "Your new username is '#{params[:username]}'"
  end
end

__END__

@@my_inline_template
h1 This is an inline template

