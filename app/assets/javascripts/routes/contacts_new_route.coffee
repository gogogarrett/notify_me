NotifyMe.ContactsNewRoute = Ember.Route.extend
  model: (params) ->
    @store.createRecord('contact')
