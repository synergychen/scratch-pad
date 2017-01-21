class ScratchPad.Routers.Notes extends Backbone.Router
  routes:
    ""          : "index"

  initialize: ->
    @collection = new ScratchPad.Collections.Notes()
    @collection.fetch()

  index: ->
    view = new ScratchPad.Views.NotesIndex(
      collection: @collection
      el: "#container"
    )
    view.render()
