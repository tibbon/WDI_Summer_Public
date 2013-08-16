Raffler.Views.EntriesIndex = Backbone.View.extend({
  template: HandlebarsTemplates['entries/index'],
  render: function() {
  	$(this.el).html(this.template({entries: "Always look on the bright side of life"}));
  	return this;
  }
});
