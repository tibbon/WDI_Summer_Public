var App = App || {};
// Multiple Weapons
App.IndexWeaponsView = Backbone.View.extend({
	el: $('#main'),
	initialize: function () {
		// Populate the application with the IndexWeaponsView template
		var appViewTemplate = $('#app-template').html();
		this.$el.html(appViewTemplate);
		
		// Cache commonly used selector
		this.list = $('#weapons-list');
	},
	render: function() {
		this.collection.each(function(weapon){
			var view = new App.ListSingleWeaponView({model: weapon})
			this.list.append(view.render().el);
		}, this);

		return this;
	}
});