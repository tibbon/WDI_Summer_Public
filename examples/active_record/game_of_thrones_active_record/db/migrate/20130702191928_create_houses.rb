class CreateHouses < ActiveRecord::Migration
  def up
    create_table :houses do |t|
      t.string :name
      t.string :sigil
      t.string :motto
      t.timestamps
    end
  end

  def down
    drop_table :houses
  end
end
