class ScratchPad.Views.NotesIndex extends Backbone.View
  template: JST["notes/index"]

  render: ->
    @$el.html(@template())
    @collection.forEach(@renderNote)
    this

  renderNote: (note) =>
    view = new ScratchPad.Views.NoteShow(model: note, tagName: "li")
    @$("#notes").append(view.render().el)
