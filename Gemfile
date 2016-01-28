source 'https://rubygems.org'
ruby '2.2.3'

gem 'rails', '5.0.0.beta1.1'
gem 'pg'
gem 'puma'
gem 'rack-cors', require: 'rack/cors'

gem 'active_model_serializers', '~> 0.8.3'
gem 'responders', '~> 2.0'

gem 'excon', require: false
gem 'simplificator-withings', require: false

group :production, :staging do
  gem 'rails_12factor'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'dotenv-rails'
  gem 'pry-rails'
end
