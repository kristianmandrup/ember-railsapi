App.modelMixins.RWrap = Ember.Mixin.create
  r: ->
    for attribute in @type.attributeNames
      do (attribute) ->
        R @this[attribute]
