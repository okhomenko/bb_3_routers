// Generated by CoffeeScript 1.3.3
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['backbone', '../models/location', '../views/item'], function(Backbone, Model, ItemView) {
    var Router;
    Router = (function(_super) {

      __extends(Router, _super);

      function Router() {
        return Router.__super__.constructor.apply(this, arguments);
      }

      Router.prototype.routes = {
        'locations': 'home',
        'locations/:id': 'show'
      };

      Router.prototype.home = function() {
        return console.log('home');
      };

      Router.prototype.show = function(id) {
        var model, view;
        model = new Model({
          id: id
        });
        view = new ItemView({
          model: model
        });
        view.render(function(el) {
          return $('#content').html(el);
        });
        return model.fetch();
      };

      return Router;

    })(Backbone.Router);
    return Router;
  });

}).call(this);
