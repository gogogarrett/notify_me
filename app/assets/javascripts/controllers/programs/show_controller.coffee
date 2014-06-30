NotifyMe.ProgramController = Ember.ObjectController.extend
  # needs: ["contacts"]

  actions:
    save: ->
      @content.save().then =>
        @transitionToRoute('program', @content)

    cancel: ->
      @content.deleteRecord()
      @transitionToRoute('programs.index')
