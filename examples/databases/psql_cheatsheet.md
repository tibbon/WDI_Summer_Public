# Postgres Cheat Sheet

connect to postgres

First open the PostgresApp. You should see an elephant in your menubar. Then run the following.
```bash
$ psql
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

##Postgres Setup
[Download and Install the Postgres App](http://postgresapp.com/)
Make sure to put your PostgresApp in your Applications Folder

Add the following line to your .bash_profile
```bash
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
```

Restart your terminal.

Make sure if you type `which psql` in your terminal you get `/Applications/Postgres.app/Contents/MacOS/bin/psql`

