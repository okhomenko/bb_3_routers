
define [
  # Libs
  'backbone'

  # Deps
  '../models/location'
  '../views/item'

], (Backbone, Model, ItemView) ->

  class Router extends Backbone.Router
  
    routes:
      'locations': 'home'
      'locations/:id': 'show'

    home: ->
      console.log 'home'

    show: (id) ->
      model = new Model
        id: id

      view = new ItemView
        model: model

      view.render (el) ->
        $('#content').html el

      model.fetch()


  return Router
