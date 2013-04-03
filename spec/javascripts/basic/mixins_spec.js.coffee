#= mixins

Ember.testing = true

describe "R integration", ->
  before ->
    App.initialize

  it "User model can wrap attributes with R", ->
    Ember.run ->
      user = App.User.create firstName: 'Kris', lastName: 'Main', age: 32
      user.r
      console.log user.firstName
