class CreateTodosTable < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.belongs_to :contacts
      t.string :task
      t.string :description
      t.string :due_date
      t.boolean :completed, default: false
    end

    create_table :contacts do |t|
      t.belongs_to :todos
      t.string :name
    end

    create_table :contacts_todos, :id => false do |t|
      t.belongs_to :contact
      t.belongs_to :todo
    end
  end
end
