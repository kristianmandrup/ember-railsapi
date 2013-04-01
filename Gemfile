source 'http://rubygems.org'

ruby '2.0.0'

gem 'rails', '3.2.11'
gem 'rails-api'
gem 'thin'
gem 'active_model_serializers', :github => 'rails-api/active_model_serializers'
gem 'client_side_validations'
gem 'client_side_validations-ember'

# MongoDB..
gem 'mongoid', '>= 3.1'
gem 'moped'

# inherited_resources: for controllers with less code
gem 'inherited_resources'

# SLIM: mmmm, less <%%>s
gem 'slim', '~> 2.0.0.pre.6'

group :development, :test do
  gem 'rspec-rails', '>= 2.12'
  gem 'webrat', '>= 0.7.3'
  gem 'factory_girl_rails', '>= 1.7'
  gem 'rdoc', '~> 3.12'
  gem "database_cleaner"
  gem "mongoid-rspec"

  gem 'debugger'
end

group :assets do
  gem 'sass-rails', '~> 3.2'
  gem 'coffee-rails', '~> 3.2'
  gem 'compass-rails'
  gem 'uglifier'
  gem 'bootstrap-sass', '~> 2.0.3.0'
  gem 'handlebars_assets'
end

group :development do
  gem 'quiet_assets'
end
