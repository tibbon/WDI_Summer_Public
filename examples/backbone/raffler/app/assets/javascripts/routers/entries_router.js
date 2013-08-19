Raffler.Routers.Entries = Backbone.Router.extend({
	routes: {
		'': 'index',
		'entries/:id': 'show'
	},
	initialize: function(){
		this.collection = new Raffler.Collections.Entries();
		this.collection.fetch({reset: true}); // Will explain in a second
	},
	index: function() {
		var view = new Raffler.Views.EntriesIndex({ collection: this.collection });
		$('#container').html(view.render().el);
	},
	show: function(id) {
		var entry = this.collection.get(id)
		var view = new Raffler.Views.EntryShow({ model: entry });
		$('#container').html(view.render().el);
	}
});