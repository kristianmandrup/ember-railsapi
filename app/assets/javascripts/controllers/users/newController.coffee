App.UsersNewController = Ember.ObjectController.extend
  create: ->
    @store.commit()
    @content.addObserver 'id', @, 'afterCreate'

  afterCreate: ->
    @content.removeObserver 'id', @, 'afterCreate'
    @transitionToRoute 'user', @content

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute 'users.index'

  buttonTitle: 'Create'
  headerTitle: 'Creating'
