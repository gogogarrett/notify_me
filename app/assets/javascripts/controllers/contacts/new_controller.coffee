NotifyMe.ContactsNewController = Ember.ObjectController.extend
  needs: ['group']

  actions:
    save: ->
      group = @get('controllers.group.content')

      console.log group

      contact = @content.setProperties
        first_name: @get('first_name')
        last_name: @get('last_name')
        email: @get('email')
        phone: @get('phone')
        group: group

      console.log contact

      contact.save().then (c) =>
        group.reload().then (g) =>
          @transitionToRoute('contacts')

    cancel: ->
      @content.deleteRecord()
      @transitionToRoute('contacts')
