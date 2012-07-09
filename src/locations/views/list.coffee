
define [
  # Libs
  'backbone'

  # Deps
  './item'
], (Backbone, ItemView) ->

  class View extends Backbone.View

    template: '''
      <h1>
        <a href='/locations'>
          Locations
        </a></h1>
      <ul class='list'>
      </ul>
    '''

    initialize: ->
      _.bindAll @
      @collection.on 'reset', @renderAll

    render: (done) ->
      content = @template
      @$el.html content
      @$list = @$ '.list'

      done?(@el)
      @

    renderAll: () ->
      @collection.each (model) =>
        @renderOne model

      @

    renderOne: (model) ->
      view = new ItemView model: model
      view.render (el) =>
        @$list.append el

  return View
