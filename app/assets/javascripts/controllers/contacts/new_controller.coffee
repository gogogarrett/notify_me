NotifyMe.ContactsNewController = Ember.ObjectController.extend
  needs: ["program"]

  actions:
    save: ->
      program = @get('controllers.program.content')

      @content.setProperties
        first_name: @get('first_name')
        last_name: @get('last_name')
        email: @get('email')
        phone: @get('phone')
        program: program

      @content.save().then (c) =>
        @transitionToRoute('contacts', program)

    cancel: ->
      @content.deleteRecord()
      @transitionToRoute('contacts')
