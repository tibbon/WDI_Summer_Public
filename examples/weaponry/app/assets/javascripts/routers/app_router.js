var App = App || {};
// ROUTER: Everything
App.AppRouter = Backbone.Router.extend({
	routes: {
		'':'indexWeapons',
		'weapons/:slug':'showWeapon'
	},
	initialize: function() {
	},
	showWeapon: function(slug){
		// Single weapon
		var weapon = this.weapons.get(slug);
		var show_weapon_view = new App.ShowWeaponView({model: weapon});
		show_weapon_view.render();
	},
	indexWeapons: function() {
		var index_weapons_view = new App.IndexWeaponsView({collection: this.weapons});
		index_weapons_view.render();
	}
});