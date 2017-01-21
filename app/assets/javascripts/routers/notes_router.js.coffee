class ScratchPad.Routers.Notes extends Backbone.Router
  routes:
    ""          : "index"
    "note/:id"  : "show"

  index: ->
    alert("index page")

  showNote: (id) ->
    alert("show note #{id}")
