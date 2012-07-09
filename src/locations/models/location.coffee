
define [
  # Libs
  'backbone'

], (Backbone) ->

  class Model extends Backbone.Model

    urlRoot: '/locations'

    url: ->
      @urlRoot + @id + '.json'

  return Model

