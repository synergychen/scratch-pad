window.ScratchPad =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    @AllNotes = new @Collections.Notes
    @AllNotes.fetch().done =>
      new @Routers.Notes()
      Backbone.history.start(pushState: true)

$(document).ready ->
  ScratchPad.initialize()
