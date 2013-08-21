class CreatePosts < ActiveRecord::Migration
  def change
  	execute "create extension hstore"
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :tags, array: true
      t.hstore :properties

      t.timestamps
    end
  end
end
