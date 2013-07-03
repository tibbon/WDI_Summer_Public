class AddHouseIdToPeoplesTable < ActiveRecord::Migration
  def up
    # This adds a foreign key to the people table
    # add_column :people, :house_id, :integer
    change_table :people do |t|
      t.references :house # creates a house_id on people table
    end
  end

  def down
    # remove column table_name, column_name
    remove_column :people, :house_id
  end
end
