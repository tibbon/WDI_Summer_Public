Raffler.Views.EntriesIndex = Backbone.View.extend({

  template: HandlebarsTemplates['entries/index'],
  render: function() {
  	$(this.el).html(this.template());
  	return this;
  }
});
