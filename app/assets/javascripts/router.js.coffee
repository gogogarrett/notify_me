# For more information see: http://emberjs.com/guides/routing/

NotifyMe.Router.reopen
  location: 'history'
  rootURL: '/'

NotifyMe.Router.map ()->
  # @resource 'contacts', ->
  #   @route 'show', path: '/:contact_id'
  #   @route 'new'

  @resource 'groups', ->
    @resource 'group', path: '/:group_id', ->
      @resource 'contacts', ->
        @route 'new'
        @route 'contact', path: '/:contact_id'

  # @resource 'programs', ->
  #   @route 'new'
  #   @route 'edit', path: '/:program_id/edit'
  #   @resource 'program', path: '/:program_id', ->
  #     @resource 'contacts', ->
  #       @route 'new'
  #       @route 'contact', path: '/:contact_id'

  # @resource "post", path: "/post/:post_id", ->
  #   @route "edit"
  #   @resource "comments", ->
  #     @route "new"

