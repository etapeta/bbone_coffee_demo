class Raffler.Views.Entry extends Backbone.View

  template: JST['entries/entry']
  tagName: 'li'

  events:
    'click': 'showEntry'

  initialize: ->
    @model.on('change', @render, this)
    @model.on('highlight', @highlightWinner, this)

  render: ->
    $(@el).html(@template(entry: @model))
    this

  highlightWinner: ->
    $('.winner').removeClass('highlight')
    @$('.winner').addClass('highlight')

  showEntry: ->
    Backbone.history.navigate("entries/#{@model.get('id')}", true)