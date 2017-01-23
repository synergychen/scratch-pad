class ScratchPad.Views.AddAction extends Backbone.View
  template: JST["notes/add-action"]

  events:
    "click #add-note": "addNote"

  render: ->
    @$el.html(@template())
    this

  addNote: ->
    @collection.add({})
    false
