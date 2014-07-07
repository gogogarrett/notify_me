# For more information see: http://emberjs.com/guides/routing/

NotifyMe.Router.reopen
  location: 'history'
  rootURL: '/'

NotifyMe.Router.map ()->

  @resource 'groups'
  @route 'group.new', path: '/groups/new'

  @resource 'group', path: '/groups/:id', ->
    @route 'edit'

    @resource 'contacts'
    @route 'contact.new', path: '/contacts/new'

    @resource 'contact', path: '/contacts/:id', ->
      @route 'edit'
