NotifyMe.ProgramsRoute = Ember.Route.extend
  model: (params) ->
    @store.find('program')
