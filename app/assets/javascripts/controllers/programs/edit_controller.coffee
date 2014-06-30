NotifyMe.ProgramsEditController = Ember.ObjectController.extend
  buttonTitle: 'Save'
  headerTitle: 'Editing'

  actions:
    destroy: ->
      @content.deleteRecord()
      @content.save()
      @transitionTo('programs.index')

    save: ->
      @content.save().then =>
        @transitionToRoute('program', @content)

    cancel: ->
      if @content.isDirty
        @content.rollback()
      @transitionTo('program', @content)
