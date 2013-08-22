class CreateBasses < ActiveRecord::Migration
  def change
    create_table :basses do |t|
      t.string :name

      t.timestamps
    end
  end
end
