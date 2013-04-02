source 'http://rubygems.org'

ruby '2.0.0'

gem 'rails', '4.0.0.beta1', github: 'rails/rails'
gem 'rails-api', '~> 0.1.0'

gem 'active_model_serializers', :github => 'rails-api/active_model_serializers'
gem 'client_side_validations'
gem 'client_side_validations-ember'

# MongoDB..
gem 'mongoid', '~> 4.0.0', github: 'mongoid/mongoid'
gem 'moped'

gem 'mongoid-serializer', path: '/Users/kmandrup/private/repos/mongoid-serializer'

# inherited_resources: for controllers with less code
# gem 'inherited_resources'

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
  gem 'sprockets-rails', '~> 2.0.0.rc3',  github: 'rails/sprockets-rails'
  gem 'sass-rails',                       github: 'rails/sass-rails'
  gem 'coffee-rails',                     github: 'rails/coffee-rails'

  gem 'compass-rails'
  gem 'uglifier'
  gem 'bootstrap-sass', '~> 2.3.1.0'
  gem 'handlebars_assets'
end

group :development do
  gem 'quiet_assets'
end

gem 'ember-rails', '~> 0.11.1', github: 'emberjs/ember-rails'
gem 'emblem-rails',             github: 'alexspeller/emblem-rails'
gem 'handlebars-source', '~> 1.0.0.rc3'

gem 'thin'