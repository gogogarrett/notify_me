NotifyMe.Contact = DS.Model.extend
  first_name: DS.attr('string')
  last_name: DS.attr('string')
  email: DS.attr('string')
  phone: DS.attr('string')

  groups: DS.hasMany('group', async: true)


  fullName: (->
    "#{@get('first_name')} #{@get('last_name')}"
  ).property('first_name', 'last_name')
