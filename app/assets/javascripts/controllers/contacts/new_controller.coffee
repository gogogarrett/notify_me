NotifyMe.ContactsNewController = Ember.ObjectController.extend
  needs: ["program"]

  actions:
    save: ->
      program = @get('controllers.program.content')
      contact = @store.createRecord('contact', {
        program: program,
        first_name: @get('firstName'),
        last_name: @get('lastName'),
        email: @get('email'),
        phone: @get('phone'),
      })

      contact.save().then (cc) =>
        @transitionToRoute('contacts', program)
