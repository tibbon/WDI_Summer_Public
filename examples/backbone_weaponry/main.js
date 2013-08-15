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
		'':'indexWeapons',
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
	},
	indexWeapons: function() {
		var index_weapons_view = new IndexWeaponsView({collection: this.weapons});
		index_weapons_view.render();
	}
});

// VIEWS: AppView, ShowWeaponView, IndexWeaponsView

// Single
var ShowWeaponView = Backbone.View.extend({
	render: function(){
		var source = $('#weapon-show-template').html(),
			template = Handlebars.compile(source),
			templateHTML = template(this.model.toJSON());
		$('#main').html(templateHTML); // REFACTOR THIS LINE

		return this;
	}
});

// Single view for our list
var ListSingleWeaponView = Backbone.View.extend({
	render: function(){
		var source = $('#weapon-show-template').html(),
			template = Handlebars.compile(source),
			templateHTML = template(this.model.toJSON());
		$('#main').append(templateHTML); // REFACTOR THIS LINE

		return this;
	}
});

// Multiple Weapons
var IndexWeaponsView = Backbone.View.extend({
	initialize: function () {
		Handlebars.registerPartial('weapon', $('#weapon-show-template'))
	},
	render: function() {
		this.collection.each(function(weapon){
			var view = new ListSingleWeaponView({model: weapon})
			view.render();
		});

		return this;
	}
});













// jQuery Onload function

$(function(){
	app = new AppRouter;
	Backbone.history.start();
});
