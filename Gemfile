source 'https://rubygems.org'
ruby '2.2.1'

gem 'rails', '4.2.1'
gem 'pg'
gem 'puma'
gem 'rack-cors', require: 'rack/cors'

gem 'active_model_serializers', '~> 0.8.3'
gem 'responders', '~> 2.0'

# Gems used for old front-end (soon to be removed)
gem 'clearance'
gem 'bootstrap-sass'
gem 'active_link_to'

gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'

gem 'excon'
gem 'mechanize'
gem 'nokogiri'
gem 'simplificator-withings'

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
