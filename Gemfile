source 'https://rubygems.org'
ruby '2.2.3'

gem 'rails', '4.2.5'
gem 'pg'
gem 'puma'
gem 'rack-cors', require: 'rack/cors'

gem 'active_model_serializers', '~> 0.8.3'
gem 'responders', '~> 2.0'

gem 'bootstrap-sass'
gem 'active_link_to'

gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'

gem 'excon', require: false
gem 'simplificator-withings', require: false

group :production, :staging do
  gem 'heroku-deflater'
  gem 'viaduct_rails_helpers'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'dotenv-rails'
  gem 'quiet_assets'
  gem 'pry-rails'
end

group :test do
  gem 'rspec-rails'
end
