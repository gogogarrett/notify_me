NotifyMe.ProgramRoute = Ember.Route.extend
  model: (params) ->
    @store.find('program', params.program_id)
