App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map ->
  @resource 'users', ->
    @route 'new'
    @route 'edit',
      path: '/:user_id/edit'
    @route 'show'
      path: ':user_id'

App.IndexRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'home')

App.UsersRoute = Ember.Route.extend
  model: ->
    App.User.find()
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'users')
    controller.set('users', model)

App.UserRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'users')

App.UsersNewRoute = App.UserRoute.extend
  model: ->
    App.User.createRecord({firstName:'', lastName:''})
  # setupController: (controller, model) ->
    # @_super()
    # controller.set('content', model)
