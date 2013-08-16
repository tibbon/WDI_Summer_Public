var App = App || {};
// ROUTER: Everything
App.AppRouter = Backbone.Router.extend({
	routes: {
		'':'indexWeapons',
		'weapons/:slug':'showWeapon'
	},
	initialize: function() {
		this.weapons = new App.Weapons([
			new App.Weapon({name: "Sting", type: "sword", slug: "sting", number_slain: 4}),
			new App.Weapon({name: "Nymeria", type: "hammer", slug: "nymeria", number_slain: 90000}),
			new App.Weapon({name: "Stormbringer", type: "sword", slug: "stormbringer", number_slain: 823})
		]);
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