## Postgres Cheat Sheet

connect to postgres

```bash
$ sql
```

list databases

```sql
=# \l
```

create database

```sql
=# CREATE DATABASE database_name;
```

connect to database

```sql
=# \c database_name
```

create a table

```sql
CREATE TABLE table_name
(
column_name DATA_TYPE,
column_name DATA_TYPE,
column_name DATA_TYPE
);
```

insert into table

```sql
database_name=# INSERT INTO table_name (column_name, column_name) VALUES ('value', value);
```

update a table

```sql
database_name=# UPDATE table_name SET column_name = new_value WHERE column_name = old_value
```

delete a row

```sql
database_name=# DELETE FROM table_name WHERE column_name = value
```


display table info

```sql
database_name=# \d table_name
```

select from a table

```sql
database_name=# SELECT column_name, column_name FROM table_name WHERE column_name = value
```

quit postgres

```sql
database_name=# \q
```

run a sql file

```bash
$ psql -d database_name -f file_name.sql
```