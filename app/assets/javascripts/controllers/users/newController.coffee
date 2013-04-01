App.UsersNewController = Ember.ObjectController.extend
  submit: ->
    @store.commit()
    @content.addObserver 'id', @, 'afterCreate'

  afterCreate: ->
    @content.removeObserver 'id', @, 'afterCreate'
    @transitionToRoute 'users.show', @content

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute 'users.index'

  buttonTitle: 'Create'
  headerTitle: 'Creating'
