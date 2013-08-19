class CreateFires < ActiveRecord::Migration
  def change
    create_table :fires do |t|
      t.string :location
      t.integer :intensity

      t.timestamps
    end
  end
end
