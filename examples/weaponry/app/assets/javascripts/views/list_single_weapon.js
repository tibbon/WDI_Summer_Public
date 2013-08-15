var App = App || {};
// Single view for our list
App.ListSingleWeaponView = Backbone.View.extend({
	tagName: 'li',
	events: {
		'click':'view'
	},
	render: function(){
		var source = $('#weapon-show-template').html(),
			template = Handlebars.compile(source),
			templateHTML = template(this.model.toJSON());
		this.$el.html(templateHTML);
		return this;
	},
	view: function() {
		app.navigate('weapons/' + this.model.get('slug'), true);
	}
});