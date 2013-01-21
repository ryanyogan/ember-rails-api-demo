App.UsersEditController = Ember.ObjectController.extend
  headerTitle: 'Edit'
  buttonTitle: 'Update'
  save: ->
    @store.commit()
    @transitionToRoute 'users.show', @content

  cancel: ->
    if @content.isDirty
      @content.rollback()
    @transitionToRoute 'users.show', @content

  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionToRoute 'users.index'
