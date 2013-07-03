class CreatePeople < ActiveRecord::Migration
  def up
    create_table :people do |t|
      t.string :name
      t.string :weapon
      t.integer :age
      t.boolean :living, default: true
      t.string :image
      t.timestamps
    end
  end

  def down
    drop_table :people
  end
end
