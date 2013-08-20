class AddScreenNameIndexToUsers < ActiveRecord::Migration
  def change
  	add_index :users, :screen_name
  end
end
