App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map ->
  @resource 'users', ->
    @route 'new'
    @route 'edit', { path: '/:user_id/edit' }      
    @route 'show', { path: ':user_id' }


App.IndexRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'home')

App.UsersRoute = Ember.Route.extend
  model: ->
    App.User.find()
    # R App.User.find()
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'users')
    # console.log 'users', model
    controller.set 'users', model

App.UserRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'users')

App.UsersNewRoute = App.UserRoute.extend
  model: ->
    App.User.createRecord 
      firstName: ''
      lastName:  ''

