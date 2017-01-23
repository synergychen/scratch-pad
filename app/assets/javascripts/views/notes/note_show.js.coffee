class ScratchPad.Views.NoteShow extends Backbone.View
  template: JST["notes/show"]

  className: "note"

  events:
    "change": "save"
    "keydown .note-title": "blueIfEnter"
    "click .destroy-note": "destroyNote"

  render: ->
    @$el.html(@template(note: @model))
    this

  save: ->
    console.log("model saved")
    @model.set
      title: @$(".note-title").val()
      content: @$(".note-content").val()
    @model.save()
    false

  blueIfEnter: (e) ->
    if e.keyCode == 13
      @$(":input").blur()

  destroyNote: ->
    @model.destroy()
    @remove()
    false
