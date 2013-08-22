class CreateCandies < ActiveRecord::Migration
  def change
  	execute "create extension hstore"
    create_table :candies do |t|
      t.string :name
      t.decimal :price
      t.hstore :flavors
      t.string :awards, array: true

      t.timestamps
    end
  end
end
