
define [
  # Libs
  'jquery'
  'backbone'

  # Deps
  'locations/collections/locations'
  'locations/views/list'

], ($, Backbone, Locations, LocationsListView) ->
  
  class Router extends Backbone.Router

    initialize: ->
      console.log 'home'
      collection = new Locations

      view = new LocationsListView
        collection: collection

      view.render (el) ->
        $('#side').html el

      collection.fetch()
      
  return Router
