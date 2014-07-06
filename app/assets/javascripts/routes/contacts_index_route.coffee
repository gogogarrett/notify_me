NotifyMe.ContactsIndexRoute = Ember.Route.extend
  model: (params) ->
    @modelFor('group').get('contacts')
    # @store.find('contact')
