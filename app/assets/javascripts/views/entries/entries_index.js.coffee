class Raffler.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    console.log(@collection)
    console.log(@collection.length)
    console.log(@collection.models.length)
    $(@el).html(@template(entries: @collection))
    this
