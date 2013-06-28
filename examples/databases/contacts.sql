-- Creates a table in our address_book database
-- Requires a database called address_book
-- Run from the terminal with psql -d address_book -f contacts.sql
CREATE TABLE contacts
(
  first VARCHAR(25),
  last  VARCHAR(25),
  age INT,
  gender CHAR(1),
  dtgd  BOOLEAN,
  phone VARCHAR(12)
);