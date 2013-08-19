class CreateFirefighters < ActiveRecord::Migration
  def change
    create_table :firefighters do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
