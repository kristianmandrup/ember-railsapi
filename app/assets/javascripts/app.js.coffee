#= require_self
#= require_tree ./mixins
#= require_tree ./helpers
#= require_tree ./config
#= require ./store
#= require ./models
#= require ./controllers
#= require ./views
#= require ./templates
#= require ./router

window.App = Ember.Application.create LOG_TRANSITIONS: true

# Defer App readiness until it should be advanced for either
# testing or production.
App.deferReadiness()
