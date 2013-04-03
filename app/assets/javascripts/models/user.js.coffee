App.User = DS.Model.extend(DS.Validations.Mixin, RWrap,
  firstName: attr('string')
  lastName:  attr('string')
  quote:     attr('string')
  age:       attr('number')
  fullName: (->
    "#{@get('firstName')} #{@get('lastName')}"
  ).property('firstName', 'lastName')
)

App.OtherUser = DS.Model.extend(DS.Validations.Mixin, 
  firstName: attr('string')
  lastName:  attr('string')
)