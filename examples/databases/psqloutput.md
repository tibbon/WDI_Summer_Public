$ psql
psql (9.2.2)
Type "help" for help.

philco=# \q
~/Documents/GA/WDI4/WDI_Summer_Public/examples/databases on master
$ psql
psql: could not connect to server: No such file or directory
  Is the server running locally and accepting
  connections on Unix domain socket "/tmp/.s.PGSQL.5432"?
~/Documents/GA/WDI4/WDI_Summer_Public/examples/databases on master
$ pry
[1] pry(main)> {:fist => 'jamal', :last=> 'powel', :age => 17, :gender => 'm'}

=> {:fist=>"jamal", :last=>"powel", :age=>17, :gender=>"m"}
[2] pry(main)> jama = _
=> {:fist=>"jamal", :last=>"powel", :age=>17, :gender=>"m"}
[3] pry(main)> phil = {:first => 'phil', :last => 'lamplugh', :age => 32 }
=> {:first=>"phil", :last=>"lamplugh", :age=>32}
[4] pry(main)> contacts = []
=> []
[5] pry(main)> contacts << jama
=> [{:fist=>"jamal", :last=>"powel", :age=>17, :gender=>"m"}]
[6] pry(main)> contacts << phil
=> [{:fist=>"jamal", :last=>"powel", :age=>17, :gender=>"m"},
 {:first=>"phil", :last=>"lamplugh", :age=>32}]
[7] pry(main)> contacts
=> [{:fist=>"jamal", :last=>"powel", :age=>17, :gender=>"m"},
 {:first=>"phil", :last=>"lamplugh", :age=>32}]
[8] pry(main)> contacts[0]
=> {:fist=>"jamal", :last=>"powel", :age=>17, :gender=>"m"}
[9] pry(main)> contacts[0][:first]
=> nil
[10] pry(main)> contacts[0][:fist]
=> "jamal"
[11] pry(main)> contacts = []
=> []
[12] pry(main)> contacts << jama << phil
=> [{:fist=>"jamal", :last=>"powel", :age=>17, :gender=>"m"},
 {:first=>"phil", :last=>"lamplugh", :age=>32}]
[13] pry(main)> contacts = {}
=> {}
[14] pry(main)> contacts[:phil] = {:first => 'phil', :age => 32}
=> {:first=>"phil", :age=>32}
[15] pry(main)> contacts[:jamal] = {:first => 'jamal', :age => 'eternal'}
=> {:first=>"jamal", :age=>"eternal"}
[16] pry(main)> exit
~/Documents/GA/WDI4/WDI_Summer_Public/examples/databases on master
$ psql
psql (9.2.2)
Type "help" for help.

philco=# \q
~/Documents/GA/WDI4/WDI_Summer_Public/examples/databases on master
$ which psql
/Applications/Postgres.app/Contents/MacOS/bin/psql
~/Documents/GA/WDI4/WDI_Summer_Public/examples/databases on master
$ subl ~/.bash_profile
~/Documents/GA/WDI4/WDI_Summer_Public/examples/databases on master
$ psql
psql (9.2.2)
Type "help" for help.

philco=# \l
                                List of databases
          Name          | Owner  | Encoding | Collate | Ctype | Access privileges
------------------------+--------+----------+---------+-------+-------------------
 campus                 | philco | UTF8     | en_US   | en_US |
 philco                 | philco | UTF8     | en_US   | en_US |
 postgres               | philco | UTF8     | en_US   | en_US |
 second_app_development | philco | UTF8     | en_US   | en_US |
 second_app_test        | philco | UTF8     | en_US   | en_US |
:                                List of databases
          Name          | Owner  | Encoding | Collate | Ctype | Access privileges
------------------------+--------+----------+---------+-------+-------------------
 campus                 | philco | UTF8     | en_US   | en_US |
 philco                 | philco | UTF8     | en_US   | en_US |
 postgres               | philco | UTF8     | en_US   | en_US |
 second_app_development | philco | UTF8     | en_US   | en_US |
 second_app_test        | philco | UTF8     | en_US   | en_US |
 template0              | philco | UTF8     | en_US   | en_US | =c/philco        +
                        |        |          |         |       | philco=CTc/philco
 template1              | philco | UTF8     | en_US   | en_US | =c/:                                List of databases
          Name          | Owner  | Encoding | Collate | Ctype | Access privileges
------------------------+--------+----------+---------+-------+-------------------
 campus                 | philco | UTF8     | en_US   | en_US |
 philco                 | philco | UTF8     | en_US   | en_US |
 postgres               | philco | UTF8     | en_US   | en_US |
 second_app_development | philco | UTF8     | en_US   | en_US |
 second_app_test        | philco | UTF8     | en_US   | en_US |
:                                List of databases
          Name          | Owner  | Encoding | Collate | Ctype | Access privileges
------------------------+--------+----------+---------+-------+-------------------
 campus                 | philco | UTF8     | en_US   | en_US |
 philco                 | philco | UTF8     | en_US   | en_US |
 postgres               | philco | UTF8     | en_US   | en_US |
 second_app_development | philco | UTF8     | en_US   | en_US |
 second_app_test        | philco | UTF8     | en_US   | en_US |
 template0              | philco | UTF8     | en_US   | en_US | =c/philco        +
                        |        |          |         |       | philco=CTc/philco
 template1              | philco | UTF8     | en_US   | en_US | =c/p:                                List of databases
          Name          | Owner  | Encoding | Collate | Ctype | Access privileges
------------------------+--------+----------+---------+-------+-------------------
 campus                 | philco | UTF8     | en_US   | en_US |
 philco                 | philco | UTF8     | en_US   | en_US |
 postgres               | philco | UTF8     | en_US   | en_US |
 second_app_development | philco | UTF8     | en_US   | en_US |
 second_app_test        | philco | UTF8     | en_US   | en_US |
:                                List of databases
          Name          | Owner  | Encoding | Collate | Ctype | Access privileges
------------------------+--------+----------+---------+-------+-------------------
 campus                 | philco | UTF8     | en_US   | en_US |
 philco                 | philco | UTF8     | en_US   | en_US |
 postgres               | philco | UTF8     | en_US   | en_US |
 second_app_development | philco | UTF8     | en_US   | en_US |
 second_app_test        | philco | UTF8     | en_US   | en_US |
 template0              | philco | UTF8     | en_US   | en_US | =c/philco        +
                        |        |          |         |       | philco=CTc/philco
 template1              | philco | UTF8     | en_US   | en_US | =c/:                                List of databases
          Name          | Owner  | Encoding | Collate | Ctype | Access privileges
------------------------+--------+----------+---------+-------+-------------------
 campus                 | philco | UTF8     | en_US   | en_US |
 philco                 | philco | UTF8     | en_US   | en_US |
 postgres               | philco | UTF8     | en_US   | en_US |
 second_app_development | philco | UTF8     | en_US   | en_US |
 second_app_test        | philco | UTF8     | en_US   | en_US |
 template0              | philco | UTF8     | en_US   | en_US | =c/philco        +
                        |        |          |         |       | philco=CTc/philco
 template1              | philco | UTF8     | en_US   | en_US | =c/philc:                                List of databases
          Name          | Owner  | Encoding | Collate | Ctype | Access privileges
------------------------+--------+----------+---------+-------+-------------------
 campus                 | philco | UTF8     | en_US   | en_US |
 philco                 | philco | UTF8     | en_US   | en_US |
 postgres               | philco | UTF8     | en_US   | en_US |
 second_app_development | philco | UTF8     | en_US   | en_US |
 second_app_test        | philco | UTF8     | en_US   | en_US |
 template0              | philco | UTF8     | en_US   | en_US | =c/philco        +
                        |        |          |         |       | philco=CTc/philco
 template1              | philco | UTF8     | en_US   | en_US | =c/philco    :                                List of databases
          Name          | Owner  | Encoding | Collate | Ctype | Access privileges
------------------------+--------+----------+---------+-------+-------------------
 campus                 | philco | UTF8     | en_US   | en_US |
 philco                 | philco | UTF8     | en_US   | en_US |
 postgres               | philco | UTF8     | en_US   | en_US |
 second_app_development | philco | UTF8     | en_US   | en_US |
 second_app_test        | philco | UTF8     | en_US   | en_US |
 template0              | philco | UTF8     | en_US   | en_US | =c/philco        +
                        |        |          |         |       | philco=CTc/philco
 template1              | philco | UTF8     | en_US   | en_US | =c/philco       :                                List of databases
          Name          | Owner  | Encoding | Collate | Ctype | Access privileges
------------------------+--------+----------+---------+-------+-------------------
 campus                 | philco | UTF8     | en_US   | en_US |
 philco                 | philco | UTF8     | en_US   | en_US |
 postgres               | philco | UTF8     | en_US   | en_US |
 second_app_development | philco | UTF8     | en_US   | en_US |
 second_app_test        | philco | UTF8     | en_US   | en_US |
 template0              | philco | UTF8     | en_US   | en_US | =c/philco        +
                        |        |          |         |       | philco=CTc/philco
 template1              | philco | UTF8     | en_US   | en_US | =c/philco        +
                        |        |          |         |       | philco=CTc/philco
(7 rows)

~
philco=# \l
                                List of databases
          Name          | Owner  | Encoding | Collate | Ctype | Access privileges
------------------------+--------+----------+---------+-------+-------------------
 campus                 | philco | UTF8     | en_US   | en_US |
 philco                 | philco | UTF8     | en_US   | en_US |
 postgres               | philco | UTF8     | en_US   | en_US |
 second_app_development | philco | UTF8     | en_US   | en_US |
 second_app_test        | philco | UTF8     | en_US   | en_US |
 template0              | philco | UTF8     | en_US   | en_US | =c/philco        +
                        |        |          |         |       | philco=CTc/philco
 template1              | philco | UTF8     | en_US   | en_US | =c/philco        +
                        |        |          |         |       | philco=CTc/philco
(7 rows)

philco=# CREATE DATABASE address_book;
CREATE DATABASE
philco=# Create table
philco-# (
philco(# age INT,
philco(#
philco=# \l
                                List of databases
          Name          | Owner  | Encoding | Collate | Ctype | Access privileges
------------------------+--------+----------+---------+-------+-------------------
 address_book           | philco | UTF8     | en_US   | en_US |
 campus                 | philco | UTF8     | en_US   | en_US |
 philco                 | philco | UTF8     | en_US   | en_US |
 postgres               | philco | UTF8     | en_US   | en_US |
 second_app_development | philco | UTF8     | en_US   | en_US |
 second_app_test        | philco | UTF8     | en_US   | en_US |
 template0              | philco | UTF8     | en_US   | en_US | =c/philco        +
                        |        |          |         |       | philco=CTc/philco
 template1              | philco | UTF8     | en_US   | en_US | =c/philco        +
                        |        |          |         |       | philco=CTc/philco
(8 rows)

philco=# \c address_book;
You are now connected to database "address_book" as user "philco".
address_book=# \d
No relations found.
address_book=# CREATE TABLE
address_book-# (
address_book(# first VARCHAR(25),
address_book(# last VARCHAR(25),
address_book(# age INT,
address_book(# gender CHAR(1),
address_book(# dtgd BOOLEAN,
address_book(# phone VARCHAR(12)
address_book(# );
ERROR:  syntax error at or near "("
LINE 2: (
        ^
address_book=# CREATE TABLE contacts                                                (                                                                                   first VARCHAR(25),                                                                  last VARCHAR(25),                                                                   age INT,                                                                            gender CHAR(1),                                                                     dtgd BOOLEAN,                                                                       phone VARCHAR(12)                                                                   );
CREATE TABLE
address_book=# \d
         List of relations
 Schema |   Name   | Type  | Owner
--------+----------+-------+--------
 public | contacts | table | philco
(1 row)

address_book=# DROP TABLE contacts;
DROP TABLE
address_book=# \d
No relations found.
address_book=# \q
~/Documents/GA/WDI4/WDI_Summer_Public/examples/databases on master
$ touch contacts.sql
~/Documents/GA/WDI4/WDI_Summer_Public/examples/databases on master
$ subl contacts.sql
~/Documents/GA/WDI4/WDI_Summer_Public/examples/databases on master
$ psql -d address_book -f contacts.sql
CREATE TABLE
~/Documents/GA/WDI4/WDI_Summer_Public/examples/databases on master
$ psql
psql (9.2.2)
Type "help" for help.

philco=# \c address_book
You are now connected to database "address_book" as user "philco".
address_book=# \d
         List of relations
 Schema |   Name   | Type  | Owner
--------+----------+-------+--------
 public | contacts | table | philco
(1 row)

address_book=# INSERT INTO contacts (first) VALUES ('phil');
INSERT 0 1
address_book=# SELECT * from contacts
address_book-# ;
 first | last | age | gender | dtgd | phone
-------+------+-----+--------+------+-------
 phil  |      |     |        |      |
(1 row)

address_book=# INSERT INTO contacts (first) VALUES ("beth");
ERROR:  column "beth" does not exist
LINE 1: INSERT INTO contacts (first) VALUES ("beth");
                                             ^
address_book=# INSERT INTO contacts (first) VALUES ('beth');
INSERT 0 1
address_book=# select * from contacts;
 first | last | age | gender | dtgd | phone
-------+------+-----+--------+------+-------
 phil  |      |     |        |      |
 beth  |      |     |        |      |
(2 rows)

address_book=# INSERT INTO contacts (first, age) VALUES ('elaine', 64);
INSERT 0 1
address_book=# INSERT INTO contacts (first, last, age, gender, dtgd, phone) VALUES ('david', 'fisher', 21, 'm', true, '617-CUL-DUDE');
INSERT 0 1
address_book=# select * from contacts;
 first  |  last  | age | gender | dtgd |    phone
--------+--------+-----+--------+------+--------------
 phil   |        |     |        |      |
 beth   |        |     |        |      |
 elaine |        |  64 |        |      |
 david  | fisher |  21 | m      | t    | 617-CUL-DUDE
(4 rows)

address_book=# UPDATE contacts SET last = 'lamplugh' WHERE first = 'phil';
UPDATE 1
address_book=# address_book=# UPDATE contacts SET last = 'lamplugh' WHERE first = 'elaine'
address_book'# ;
address_book'# select * from contacts;
address_book'#
address_book=# UPDATE contacts SET last = 'LAMPLUGH' WHERE first = 'elaine';
UPDATE 1
address_book=# select * from contacts;
 first  |   last   | age | gender | dtgd |    phone
--------+----------+-----+--------+------+--------------
 beth   |          |     |        |      |
 david  | fisher   |  21 | m      | t    | 617-CUL-DUDE
 phil   | lamplugh |     |        |      |
 elaine | LAMPLUGH |  64 |        |      |
(4 rows)

address_book=# UPDATE contacts SET last = 'lamplugh', age = 57, dtgd = false, phone = '302-blahblah';
UPDATE 4
address_book=# select * from contacts;
 first  |   last   | age | gender | dtgd |    phone
--------+----------+-----+--------+------+--------------
 beth   | lamplugh |  57 |        | f    | 302-blahblah
 david  | lamplugh |  57 | m      | f    | 302-blahblah
 phil   | lamplugh |  57 |        | f    | 302-blahblah
 elaine | lamplugh |  57 |        | f    | 302-blahblah
(4 rows)

address_book=# DELETE FROM contacts WHERE first = 'david';
DELETE 1
address_book=# select * contacts;
ERROR:  syntax error at or near "contacts"
LINE 1: select * contacts;
                 ^
address_book=# select * contacts;
ERROR:  syntax error at or near "contacts"
LINE 1: select * contacts;
                 ^
address_book=# select * contacts;
ERROR:  syntax error at or near "contacts"
LINE 1: select * contacts;
                 ^
address_book=#
address_book=# \l
                                List of databases
          Name          | Owner  | Encoding | Collate | Ctype | Access privileges
------------------------+--------+----------+---------+-------+-------------------
 address_book           | philco | UTF8     | en_US   | en_US |
 campus                 | philco | UTF8     | en_US   | en_US |
 philco                 | philco | UTF8     | en_US   | en_US |
 postgres               | philco | UTF8     | en_US   | en_US |
 second_app_development | philco | UTF8     | en_US   | en_US |
 second_app_test        | philco | UTF8     | en_US   | en_US |
 template0              | philco | UTF8     | en_US   | en_US | =c/philco        +
                        |        |          |         |       | philco=CTc/philco
 template1              | philco | UTF8     | en_US   | en_US | =c/philco        +
                        |        |          |         |       | philco=CTc/philco
(8 rows)

address_book=# select * from contacts;
 first  |   last   | age | gender | dtgd |    phone
--------+----------+-----+--------+------+--------------
 beth   | lamplugh |  57 |        | f    | 302-blahblah
 phil   | lamplugh |  57 |        | f    | 302-blahblah
 elaine | lamplugh |  57 |        | f    | 302-blahblah
(3 rows)

address_book=# \q
~/Documents/GA/WDI4/WDI_Summer_Public/examples/databases on master
$ psql
psql (9.2.2)
Type "help" for help.

philco=# CREATE DATABASE atlas;
CREATE DATABASE
philco=# \Q
Invalid command \Q. Try \? for help.
philco=# \
Invalid command \. Try \? for help.
philco=# \q
~/Documents/GA/WDI4/WDI_Summer_Public/examples/databases on master
$ touch cities.sql
~/Documents/GA/WDI4/WDI_Summer_Public/examples/databases on master
$ subl cities.sql
~/Documents/GA/WDI4/WDI_Summer_Public/examples/databases on master
$ psql -d atlas -f cities.sql
CREATE TABLE
~/Documents/GA/WDI4/WDI_Summer_Public/examples/databases on master
$ psql
psql (9.2.2)
Type "help" for help.

philco=# \c atlas
You are now connected to database "atlas" as user "philco".
atlas=# CREATE TABLE cities
atlas-# (
atlas(#   name VARCHAR(25),
atlas(#   state CHAR(2),
atlas(#   temp INT,
atlas(#   population INT
atlas(# );
ERROR:  relation "cities" already exists
atlas=# INSERT INTO cities (name, state, temp, population) VALUES ('Wilmington', 'DE', 72, 70000);
INSERT 0 1
atlas=# INSERT INTO cities (name, state, temp, population) VALUES ('Newark', 'DE', 71, 1000);
INSERT 0 1
atlas=# select * from cities;
    name    | state | temp | population
------------+-------+------+------------
 Wilmington | DE    |   72 |      70000
 Newark     | DE    |   71 |       1000
(2 rows)

atlas=# select temp from cities;
 temp
------
   72
   71
(2 rows)

atlas=# select name, temp from cities;
    name    | temp
------------+------
 Wilmington |   72
 Newark     |   71
(2 rows)

atlas=# select name, temp from cities where temp > 71;
    name    | temp
------------+------
 Wilmington |   72
(1 row)

atlas=# update cities set temp = 0;
UPDATE 2
atlas=# select * from cities;
    name    | state | temp | population
------------+-------+------+------------
 Wilmington | DE    |    0 |      70000
 Newark     | DE    |    0 |       1000
(2 rows)

atlas=#
