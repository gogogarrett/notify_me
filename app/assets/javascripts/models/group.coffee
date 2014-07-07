NotifyMe.Group = DS.Model.extend
  name: DS.attr('string')

  contacts: DS.hasMany('contact', async: true)


