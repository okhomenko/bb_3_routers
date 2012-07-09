
requirejs [

  # Libs
  'jquery'
  'backbone'

  # Deps
  'routers/main'
  'locations/routers/main'

], ($, Backbone, MainAppRouter, LocationsRouter) ->

  new LocationsRouter
  new MainAppRouter

  Backbone.history?.start
    pushState: true

  $(document).on "click", "a:not([data-bypass])", (evt) ->
    href = $(this).prop("href")
    root = location.protocol + "//" + location.host
    if (href)
      evt.preventDefault()

    Backbone.history.navigate(href.slice(root.length), true)
