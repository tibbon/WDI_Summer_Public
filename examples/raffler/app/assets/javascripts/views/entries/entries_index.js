Raffler.Views.EntriesIndex = Backbone.View.extend({

  template: HandlebarsTemplates['entries/index'],
  render: function(){
  	$(this.el).html(this.template({entries: "Entries goes here."}));
  	return this;
  }

});
