Raffler.Routers.Entries = Backbone.Router.extend({
	routes: {
		'': 'index'
	},
	index: function() {
		alert("Hello from Router Index");
	}
});
