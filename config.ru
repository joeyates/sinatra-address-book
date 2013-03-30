$: << File.dirname(__FILE__)
require 'rack/protection'
require 'address-book'

# For a real application, keep this value in an environment variable.
# On Heroku, use a config var:
# https://devcenter.heroku.com/articles/config-vars
my_secret = 'caae90dc173f748114d3913ed40fc58ab76411d9f4aecec86b63ab2c05352e61'

# Set up sessions and protection (including from CSRF attacks)
use Rack::Session::Cookie, secret: my_secret
use Rack::Protection, use: :authenticity_token

run AddressBook.new

