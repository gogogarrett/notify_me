NotifyMe.ContactsRoute = Ember.Route.extend
  model: (params) ->
    @modelFor('program').get('contacts')
