Raffler.Views.EntryShow = Backbone.View.extend({
  template: HandlebarsTemplates['entries/show'],
  initialize: function(){
  	this.model.on('reset', this.render, this);
  },
  render: function() {
  	$(this.el).html(this.template({ model: this.model }));
  	return this;
  }
});
