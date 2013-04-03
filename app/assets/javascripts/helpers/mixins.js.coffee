MetaClass = Ember.Mixin.create
  meta: (name) ->
    Ember.getMeta this, 'cache'
  cache: () ->
    @meta 'cache'
  attributeNames: () ->
    R @cache().attributes.keys.list
  relationshipNames: () ->
    R @cache().relationshipsByName.keys.list

App.Mixins.RWrap = Ember.Mixin.create
  r: ->
    for attribute in @type.attributeNames
      do (attribute) ->
        R @this[attribute]

DS.Model.reopenClass(MetaClass)


