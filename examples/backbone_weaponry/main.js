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

// VIEWS: AppView, ShowWeaponView, IndexWeaponsView

var ShowWeaponView = Backbone.View.extend({
	render: function(){
		var weapon = new Weapon,
			source = $('#weapon-show-template').html(),
			template = Handlebars.compile(source),
			templateHTML = template(weapon.toJSON());
		$('#main').html(templateHTML);
	}
});

// jQuery Onload function