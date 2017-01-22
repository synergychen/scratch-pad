class ScratchPad.Routers.Notes extends Backbone.Router
  routes:
    ""   : "index"

  index: ->
    view = new ScratchPad.Views.NotesIndex(
      collection: ScratchPad.AllNotes
    )
    $("#container").html(view.render().el)
