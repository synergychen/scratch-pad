class ScratchPad.Views.NoteShow extends Backbone.View
  template: JST["notes/show"]

  className: "note"

  events:
    "change": "save"
    "keydown .note-title": "blueIfEnter"
    "focus .note-title, .note-content": "beginEditing"
    "click .destroy-note": "destroyNote"

  initialize: ->
    @listenTo(@model, "error", @addError)

  render: ->
    @$el.html(@template(note: @model))
    this

  save: ->
    @model.set
      title: @$(".note-title").val()
      content: @$(".note-content").val()
    @model.save()
    false

  blueIfEnter: (e) ->
    if e.keyCode == 13
      @$(":input").blur()

  beginEditing: ->
    @$el.removeClass("error")

  destroyNote: ->
    @model.destroy()
    @remove()
    false

  addError: =>
    @$el.addClass("error")
