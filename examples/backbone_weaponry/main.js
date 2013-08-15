// MODEL: Weapon
var Weapon = Backbone.Model.extend({
	idAttribute: 'slug',
	defaults: {
		name: "Aphrodite\'s Sword",
		type: "Sword",
		slug: "aphrodites-sword",
		number_slain: 9001
	}
});
// COLLECTION: Weapons
var Weapons = Backbone.Collection.extend({
	model: Weapon
});

// ROUTER: Everything
var AppRouter = Backbone.Router.extend({
	routes: {
		'weapons/:slug':'showWeapon'
	},
	initialize: function() {
		this.weapons = new Weapons([
			new Weapon({name: "Sting", type: "sword", slug: "sting", number_slain: 4}),
			new Weapon({name: "Nymeria", type: "hammer", slug: "nymeria", number_slain: 90000}),
			new Weapon({name: "Stormbringer", type: "sword", slug: "stormbringer", number_slain: 823})
		]);
	},
	showWeapon: function(slug){
		// Single weapon
		var weapon = this.weapons.get(slug);
		var show_weapon_view = new ShowWeaponView({model: weapon});
		show_weapon_view.render();
	}
});

// VIEWS: AppView, ShowWeaponView, IndexWeaponsView

var ShowWeaponView = Backbone.View.extend({
	render: function(){
		var source = $('#weapon-show-template').html(),
			template = Handlebars.compile(source),
			templateHTML = template(this.model.toJSON());
		$('#main').html(templateHTML);
	}
});

// jQuery Onload function

$(function(){
	app = new AppRouter;
	Backbone.history.start();
});
