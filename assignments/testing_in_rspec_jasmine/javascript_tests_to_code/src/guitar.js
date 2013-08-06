if (typeof Object.create !== 'function') {
	Object.create = function (o) {
		var F = function () {};
		F.prototype = o;
		return new F();
	};
}

var guitar = {
	numberOfStrings: 6,
	volume: 5,
	name: "Fender Esquire",
	setName: function(name) {
		this.name = name;
	},
	breakString: function() {
		this.numberOfStrings = this.numberOfStrings - 1;
		if (this.numberOfStrings < 1) {
			this.volume = 0;
		}
	},
	restring: function() {
		this.numberOfStrings = 6;
		this.volume = 5;
	},
	playRock: function() {
		this.numberOfStrings > 0 ? this.volume = 11 : this.volume = 0;
	},
	restringForMoreRock: function() {
		this.numberOfStrings = 7;
	},
	playBasicRhythm: function () {
		return "jug jigga jug jigga jug";
	},
	playHighStrings: function () {
		return "meedley meedley meedley meedley meedley meedley meedley meedley meedley meedley meedley meedley MEEEEEEEEEEEEEEEE. \'And the dragon comes in the NIIIiiiiIIIiiiiIIIIIIIIiiiiiiiiiiiIIIIIIIIiiiIIGGHH\'";
	}
};