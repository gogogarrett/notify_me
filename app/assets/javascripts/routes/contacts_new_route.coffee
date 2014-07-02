NotifyMe.ContactsNewRoute = Ember.Route.extend
  model: (params) ->
    group = @modelFor('group')
    @store.createRecord('contact', {group: group})
