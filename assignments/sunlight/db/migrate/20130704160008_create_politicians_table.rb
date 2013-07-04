# created by running $ rake db:create_migration NAME=create_politicans_table
class CreatePoliticiansTable < ActiveRecord::Migration
  # creates a table caleld politicans with the following columsn
  def up
    create_table :politicians do |t|
      t.string :firstname
      t.string :firstname
      t.string :lastname
      t.string :party
      t.string :phone
      t.string :state
      t.string :twitter_id
      t.boolean :in_office
      t.string :votesmart_id
      t.string :bioguide_id

      t.timestamps
    end
  end

  # running $ rake db:rollback will remove the table
  def down
    drop_table :politicians
  end
end
