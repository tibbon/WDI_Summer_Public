class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :product, index: true
      t.text :body
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
