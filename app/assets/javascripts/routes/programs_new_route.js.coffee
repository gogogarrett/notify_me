NotifyMe.ProgramsNewRoute = Ember.Route.extend
  model: (params) ->
    @store.createRecord('program')

