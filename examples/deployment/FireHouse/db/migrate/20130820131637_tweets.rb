class Tweets < ActiveRecord::Migration
  def up
    create_table :tweets do |t|
  		t.string :created_at
  		t.text :text
  		t.string :source
  		t.boolean :truncated
  		t.integer :retweet_count
  		t.integer :favorite_count
  		t.boolean :favorited
  		t.boolean :retweeted
  		t.string :lang
  		t.belongs_to :user
  	end
  	add_column :tweets, :tweet_id, :bigint
  end

  def down
  	drop_table :tweets
  end
end