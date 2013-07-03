## ActiveRecord Cheatsheet

create a new migration file

```bash
~/code/project $ rake db:create_migration NAME=name_of_migration
```

apply a migration

```bash
~/code/project $ rake db:migrate
```

undo a migration

```bash
~/code/project $ rake db:rollback
```

create a table in a migration

```ruby
create_table :table_name do |t|
  t.data_type :name_of_column
  t.timestamps
end
```

drop a table

```ruby
drop_table :table_name
```

rename a column

```ruby
rename_column :table_name, :old_column_name, :new_column_name
```

change column datatype

```ruby
change_column :table_name, :column_name, :new_data_type
```

two ways to add a foreign key to a table

```ruby
  t.integer :shelter_id
```
or

```ruby
  t.references :shelter
```
