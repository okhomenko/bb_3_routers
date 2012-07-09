
define [
  # Libs
  'backbone'

  # Deps
  '../models/location'

], (Backbone, Model) ->

  class Collection extends Backbone.Collection
    model: Model
    url: '/locations.json'

  return Collection
