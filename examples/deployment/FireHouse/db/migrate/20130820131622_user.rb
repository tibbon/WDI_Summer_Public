class User < ActiveRecord::Migration
  def up
    create_table :users do |t|
  		t.integer :twitter_id
  		t.string :name
  		t.string :screen_name
  		t.string :url
  		t.string :location
  		t.text :description
  		t.integer :followers_count
  		t.integer :friends_count
  		t.integer :favourites_count
  		t.string :lang
  		t.timestamps
  	end
  end

  def down
   	drop_table :users
  end
end