Raffler.Routers.Entries = Backbone.Router.extend({
	routes: {
		'':'index',
		'entries/:id':'show'
	},
	index: function(){
		var view = new Raffler.Views.EntriesIndex();
		$('#container').html(view.render().el);
	},
	show: function(id){
		alert("entry" + id);
	}
});
