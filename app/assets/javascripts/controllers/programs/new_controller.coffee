NotifyMe.ProgramsNewController = Ember.ObjectController.extend
  headerTitle: 'Create'
  buttonTitle: 'Create'

  actions:
    save: ->
      @content.save().then =>
        @transitionToRoute('program', @content)

    cancel: ->
      @content.deleteRecord()
      @transitionToRoute('programs.index')
