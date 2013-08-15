// // jQuery Onload function

// window.App = {
//   Models: {},
//   Collections: {},
//   Views: {},
//   Routers: {},
//   initialize: function(data) {
//     this.tasks = new ExampleApp.Collections.Tasks(data.tasks);

//     new ExampleApp.Routers.Tasks({ collection: this.tasks });
//     if (!Backbone.history.started) {
//       Backbone.history.start();
//       Backbone.history.started = true;
//     }
//   }
// };


$(function(){
	
	app = new App.AppRouter;
	Backbone.history.start();
});
