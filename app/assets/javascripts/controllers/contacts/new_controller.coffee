NotifyMe.ContactsNewController = Ember.ObjectController.extend
  needs: ['group']

  actions:
    save: ->
      # group = @get('controllers.group.content')

      contact = @content.setProperties
        first_name: @get('first_name')
        last_name: @get('last_name')
        email: @get('email')
        phone: @get('phone')

      # contact.get('groups').then (groups) ->
      #   groups.pushObject(group)

      # console.log group
      # console.log contact

      contact.save().then (c) =>
        group = @get('controllers.group.content')

        group.get('contacts').then (contacts) =>
          contacts.pushObject(c)

        group.get('contacts').then (cs) =>
          console.log cs

        group.save().then (g) =>
          @transitionToRoute('contacts')

    cancel: ->
      @content.deleteRecord()
      @transitionToRoute('contacts')
