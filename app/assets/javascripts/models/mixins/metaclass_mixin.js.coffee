App.modelMixins.MetaClass = Ember.Mixin.create
  meta: (name) ->
    Ember.getMeta this, 'cache'
  cache: () ->
    @meta 'cache'
  attributeNames: () ->
    R @cache().attributes.keys.list
  relationshipNames: () ->
    R @cache().relationshipsByName.keys.list

DS.Model.reopenClass(App.modelMixins.MetaClass)


