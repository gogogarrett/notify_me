NotifyMe.ContactsNewController = Ember.ObjectController.extend

  actions:
    save: ->
      @content.setProperties
        first_name: @get('first_name')
        last_name: @get('last_name')
        email: @get('email')
        phone: @get('phone')

      @content.save().then (c) =>
        @transitionToRoute('contacts')

    cancel: ->
      @content.deleteRecord()
      @transitionToRoute('contacts')
