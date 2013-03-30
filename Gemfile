source 'https://rubygems.org'

gem 'sinatra'
gem 'slim'
gem 'data_mapper'

group :development do
  gem 'unicorn'
  gem 'guard'
  gem 'listen'
  gem 'rb-inotify', :require => false
  gem 'rb-fsevent', :require => false
  gem 'guard-unicorn'
end

group :test do
  gem 'rack-test'
  gem 'rspec'
end

group :development, :test do
  gem 'dm-sqlite-adapter'
end

group :production do
  gem 'dm-postgres-adapter'
end

