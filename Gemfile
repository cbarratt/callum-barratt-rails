source 'https://rubygems.org'
ruby '2.3.0'

gem 'rails', '5.0.0.beta1.1'
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
  gem 'rails_12factor'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'dotenv-rails', github: 'y-yagi/dotenv', branch: 'can_use_rails_5'
  gem 'quiet_assets'
  gem 'pry-rails'
end
