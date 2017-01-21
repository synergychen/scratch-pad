window.ScratchPad =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new @Routers.Notes
    Backbone.history.start(pushStart: true)

$(document).ready ->
  ScratchPad.initialize()
