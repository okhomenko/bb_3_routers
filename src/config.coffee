
requirejs.config

  deps: ['main']

  paths:
    'jquery': '../libs/jquery'
    'underscore': '../libs/underscore'
    'backbone': '../libs/backbone'


  shim:

    'underscore':
      exports: '_'

    'backbone':
      deps: ['jquery', 'underscore']
      exports: 'Backbone'
