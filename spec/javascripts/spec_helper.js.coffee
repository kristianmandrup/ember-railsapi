#= require konacha_config
#= require sinon-1.6.0

#= require ruby
#= require ember
#= require helpers/mixins
#= require_tree ./models

# Prevent the router from manipulating the browser's URL.
App.Router.reopen location: 'none'

# **** Global before / after ***

# Sinon fake server

# Stub out Konacha.reset()
Konacha.reset = Ember.K

beforeEach: (done) ->
  # Fake XHR
  server = sinon.fakeServer.create()

  # Prevent automatic scheduling of runloops. For tests, we
  # want to have complete control of runloops.
  Ember.testing = true

  Ember.run( ->
    # Advance App readiness, which was deferred when the app
    # was created.

    # This needs to be done here, after each iframe has been setup,
    # instead of in a global `before`.
    App.advanceReadiness

    # When App readiness promise resolves, setup is complete
    App.then: ->
      done()
  )

afterEach: ->
  # Reset App
  Ember.run( ->
    App.reset()
  )

  # Restore XHR
  server.restore()