NotifyMe.ContactsIndexRoute = Ember.Route.extend
  model: (params) ->
    @store.find('contact')
