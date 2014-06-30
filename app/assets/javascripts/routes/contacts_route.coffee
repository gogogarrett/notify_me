NotifyMe.ContactsRoute = Ember.Route.extend
  model: (params) ->
    @store.find('contact')
