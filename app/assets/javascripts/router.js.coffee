App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map ->
  @resource 'users', ->
    @route 'new'
    @route 'edit', { path: '/:user_id/edit' }      
    @route 'show', { path: ':user_id' }

#= require_tree ./routes