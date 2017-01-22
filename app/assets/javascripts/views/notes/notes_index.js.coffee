class ScratchPad.Views.NotesIndex extends Backbone.View
  template: JST['notes/index']

  events:
    "click .note-link": "showNote"

  render: ->
    @$el.html(@template(notes: @collection))
    this

  showNote: (e) ->
    url = $(e.target).attr("href")
    Backbone.history.navigate(url, trigger: true)
    false # equal to e.preventDefault()
