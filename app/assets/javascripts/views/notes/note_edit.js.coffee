class ScratchPad.Views.NoteEdit extends Backbone.View
  template: JST['notes/edit']

  events:
    "submit": "saveModel"

  render: ->
    @$el.html(@template(note: @model))
    this

  saveModel: (e) ->
    @model.save
      title: @$(".note-title").val()
      content: @$(".note-content").val()
    Backbone.history.navigate("/", trigger: true)
    false
