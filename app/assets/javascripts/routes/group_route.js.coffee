NotifyMe.GroupRoute = Ember.Route.extend
  model: (params) -> @store.find('group', params.id)

NotifyMe.GroupIndexRoute = Ember.Route.extend
  redirect: (model) -> @transitionTo('contacts')
