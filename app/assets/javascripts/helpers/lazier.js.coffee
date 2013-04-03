console.log 'Lazier!'

Lazier = Ember.Namespace.create({
});

Lazier.CloseField = Ember.Mixin.create({
  focusOut: ->
    this.set('isEditing', false)
 
  keyUp: (evt) ->
    controller = Lazier.selectedProjectController
    if evt.keyCode == 13
      this.set('isEditing', false)
    else
      controller.content.set('isDirty', true)
      controller.set('hasErrors', false)
      controller.set('errors', false)
      this._super(evt);
})
 
Lazier.EditField = Ember.View.extend({
  tagName: 'span'
  templateName: 'edit_field'
 
  doubleClick: ->
    this.set('isEditing', true)
    false
})
 
Lazier.EditField.reopen(Lazier.CloseField)
 
Lazier.TextField = Ember.TextField.extend({
  didInsertElement: ->
    this.$().focus()
})
 
Lazier.TextField.reopen(Lazier.CloseField)
