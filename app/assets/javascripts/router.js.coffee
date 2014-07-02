# For more information see: http://emberjs.com/guides/routing/

NotifyMe.Router.reopen
  location: 'history'
  rootURL: '/'

NotifyMe.Router.map ()->
  @resource 'contacts', ->
    @route 'contact', path: '/:contact_id'
    @route 'new'

  # @resource 'groups', ->
  #   @route 'contact', path: '/:group_id'
  #   @route 'new'

  # @resource 'programs', ->
  #   @route 'new'
  #   @route 'edit', path: '/:program_id/edit'
  #   @resource 'program', path: '/:program_id', ->
  #     @resource 'contacts', ->
  #       @route 'new'
  #       @route 'contact', path: '/:contact_id'
