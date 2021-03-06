// Generated by CoffeeScript 1.3.3
(function() {

  requirejs.config({
    deps: ['main'],
    paths: {
      'jquery': '../libs/jquery',
      'underscore': '../libs/underscore',
      'backbone': '../libs/backbone'
    },
    shim: {
      'underscore': {
        exports: '_'
      },
      'backbone': {
        deps: ['jquery', 'underscore'],
        exports: 'Backbone'
      }
    }
  });

}).call(this);
