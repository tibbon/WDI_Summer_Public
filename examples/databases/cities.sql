-- run this file from the bash prompt
-- requires a database file called atlas to have already been created
-- $ psql -d atlas -f cities.psql
-- create a table called cities
CREATE TABLE cities
(
  name VARCHAR(25),
  state CHAR(2),
  temp INT,
  population INT
);