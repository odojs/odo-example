// Generated by CoffeeScript 1.6.3
(function() {
  define(['plugins/router', 'bootstrap'], function(router, bootstrap) {
    return {
      router: router,
      activate: function() {
        router.mapUnknownRoutes(function(instruction) {
          return instruction.config.moduleId = 'notfound';
        });
        return router.activate();
      },
      compositionComplete: function() {
        return $('.dropdown-toggle').dropdown();
      }
    };
  });

}).call(this);