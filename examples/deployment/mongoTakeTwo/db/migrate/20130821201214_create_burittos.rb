class CreateBurittos < ActiveRecord::Migration
  def change
    create_table :burittos do |t|
      t.string :name
      t.string :flavor
    end
  end
end
