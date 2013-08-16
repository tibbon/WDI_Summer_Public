Raffler.Routers.Entries = Backbone.Router.extend({
	routes: {
		'': 'index',
		'entries/:id': 'show'
	},
	index: function() {
		alert("Hello from Router Index");
	},
	show: function(id) {
		alert("Hello from Router Show Number:" + id);
	}
});