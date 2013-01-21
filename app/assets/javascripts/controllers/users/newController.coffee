App.UsersNewController = Ember.ObjectController.extend
  headerTitle: 'Create'
  buttonTitle: 'Create'
  save: ->
    @store.commit()
    @content.addObserver 'id', @, 'afterSave'

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute('users.index')

  afterSave: ->
    @content.removeObserver 'id', @, 'afterSave'
    @transitionToRoute('users.show', @content)

