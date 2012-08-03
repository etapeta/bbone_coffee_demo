class Raffler.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  index: ->
    alert 'hello world!'

  show: (id) ->
    alert "Entry #{id}"
