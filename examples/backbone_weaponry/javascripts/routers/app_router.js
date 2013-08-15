// ROUTER: Everything
window.AppRouter = Backbone.Router.extend({
	routes: {
		'':'indexWeapons',
		'weapons/:slug':'showWeapon'
	},
	initialize: function() {
		this.weapons = new window.Weapons([
			new window.Weapon({name: "Sting", type: "sword", slug: "sting", number_slain: 4}),
			new window.Weapon({name: "Nymeria", type: "hammer", slug: "nymeria", number_slain: 90000}),
			new window.Weapon({name: "Stormbringer", type: "sword", slug: "stormbringer", number_slain: 823})
		]);
	},
	showWeapon: function(slug){
		// Single weapon
		var weapon = this.weapons.get(slug);
		var show_weapon_view = new window.ShowWeaponView({model: weapon});
		show_weapon_view.render();
	},
	indexWeapons: function() {
		var index_weapons_view = new window.IndexWeaponsView({collection: this.weapons});
		index_weapons_view.render();
	}
});