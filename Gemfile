source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails', '3.2.11'
gem 'rails-api'
gem 'thin'
gem 'active_model_serializers', :github => 'rails-api/active_model_serializers'

group :development, :test do
  gem 'debugger'
  gem 'sqlite3'
end

group :production do
  gem 'pg'
end

group :assets do
  gem 'sass-rails', '~> 3.2'
  gem 'coffee-rails', '~> 3.2'
  gem 'compass-rails'
  gem 'uglifier'
  gem 'zurb-foundation', '~> 2.2'
  gem 'handlebars_assets'
end

group :development do
  gem 'quiet_assets'
end
