class ScratchPad.Views.NotesIndex extends Backbone.View
  template: JST["notes/index"]

  initialize: ->
    @addAction = new ScratchPad.Views.AddAction(
      collection: ScratchPad.AllNotes
    )
    @listenTo(@collection, "add", @renderNote)

  render: ->
    @$el.html(@template())
    @collection.forEach(@renderNote)
    @$("#add-action-container").append(@addAction.render().el)
    this

  renderNote: (note) =>
    view = new ScratchPad.Views.NoteShow(model: note, tagName: "li")
    @$("#notes").append(view.render().el)
