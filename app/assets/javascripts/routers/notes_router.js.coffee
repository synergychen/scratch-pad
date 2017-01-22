class ScratchPad.Routers.Notes extends Backbone.Router
  routes:
    "(notes)"   : "index"
    "notes/:id" : "showNote"

  index: ->
    view = new ScratchPad.Views.NotesIndex(
      collection: ScratchPad.AllNotes
      el: "#container"
    )
    view.render()

  showNote: (id) ->
    model = ScratchPad.AllNotes.get(id)
    view = new ScratchPad.Views.NoteEdit(
      model: model
      el: "#container"
    )
    view.render()
