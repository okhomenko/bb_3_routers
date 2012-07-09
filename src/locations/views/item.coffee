
define [
  # Libs
  'backbone'
], (Backbone) ->

  class View extends Backbone.View

    template: _.template '''
      <li>
        <a href='/locations/<%= id %>'>
          <span class='name'><%= name %> 
        </a>
      </li>
    '''

    initialize: ->
      _.bindAll @
      @model.on 'change', @render

    render: (done) ->
      content = @template @model.toJSON()
      @$el.html content
      
      done?(@el)

      @


  return View
