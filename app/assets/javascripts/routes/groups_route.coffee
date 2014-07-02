NotifyMe.GroupsRoute = Ember.Route.extend
  model: (params) ->
    @store.find('group')
