window.Raffler = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    new Raffler.Routers.Entries;
    Backbone.history.start();
  }
};

$(document).ready(function(){
  Raffler.initialize();
});
