NotifyMe.Program = DS.Model.extend
  name: DS.attr('string')
  bio:  DS.attr('string')
  contacts: DS.hasMany('contact')

