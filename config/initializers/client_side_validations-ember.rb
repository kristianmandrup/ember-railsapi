ClientSideValidations::Ember.configure do |config|
  # Tell ClientSideValidations-Ember how your Rails models map to their Ember counterparts
  #
  # i.e. config.model = { 'User' => 'App.User', 'Admin' => 'Admin.User', 'Profile' => 'App.Profile']
  config.models = {'User' => 'App.User'}
end
