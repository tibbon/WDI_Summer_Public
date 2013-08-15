class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :weapon_type
      t.string :slug
      t.integer :slain

      t.timestamps
    end
  end
end
