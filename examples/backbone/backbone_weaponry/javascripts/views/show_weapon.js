var App = App || {};
// Single
App.ShowWeaponView = Backbone.View.extend({
	el: $('#main'),
	render: function(){
		var source = $('#weapon-show-template').html(),
			template = Handlebars.compile(source),
			templateHTML = template(this.model.toJSON());
		this.$el.html(templateHTML); // REFACTOR THIS LINE

		return this;
	}
});