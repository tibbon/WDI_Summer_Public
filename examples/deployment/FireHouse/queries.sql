# \x makes pretty

# returns all rows from users, all columns
SELECT * FROM users;

# return the description column only from the users
SELECT description FROM users;

# return two columns from the users
SELECT screen_name, description FROM users;

# return only one users
SELECT * FROM users LIMIT 1;

# Return the average number of followers for all users
SELECT AVG(followers_count) FROM users;

# Same as last query, but outputs (and saves) AVG as an alias
SELECT AVG(followers_count) AS "Average number of followers"  FROM users;

# Outputs sum of users for each size of follower count
SELECT followers_count, COUNT(*) FROM users GROUP BY followers_count ORDER BY followers_count;

# Same as above, but in descending order
SELECT followers_count, COUNT(*) FROM users GROUP BY followers_count ORDER BY followers_count DESC;

# Outputs count of people speaking each language
SELECT lang, COUNT(*) FROM users GROUP BY lang ORDER BY COUNT(*) DESC;

# Same as above, but using an alias for the language count. Easier to read
SELECT lang, COUNT(*) AS lang_count FROM users GROUP BY lang ORDER BY lang_count DESC;



# Running EXPLAIN on each of the queries to see if there is a difference.
EXPLAIN SELECT lang, COUNT(*) AS lang_count FROM users GROUP BY lang ORDER BY lang_count DESC;
-- -[ RECORD 1 ]-----------------------------------------------------------------------
-- QUERY PLAN | Sort  (cost=9905.23..9905.32 rows=36 width=3)
-- -[ RECORD 2 ]-----------------------------------------------------------------------
-- QUERY PLAN |   Sort Key: (count(*))
-- -[ RECORD 3 ]-----------------------------------------------------------------------
-- QUERY PLAN |   ->  HashAggregate  (cost=9903.94..9904.30 rows=36 width=3)
-- -[ RECORD 4 ]-----------------------------------------------------------------------
-- QUERY PLAN |         ->  Seq Scan on users  (cost=0.00..8690.96 rows=242596 width=3)
EXPLAIN SELECT lang, COUNT(*) FROM users GROUP BY lang ORDER BY COUNT(*) DESC;
-- -[ RECORD 1 ]-----------------------------------------------------------------------
-- QUERY PLAN | Sort  (cost=9905.23..9905.32 rows=36 width=3)
-- -[ RECORD 2 ]-----------------------------------------------------------------------
-- QUERY PLAN |   Sort Key: (count(*))
-- -[ RECORD 3 ]-----------------------------------------------------------------------
-- QUERY PLAN |   ->  HashAggregate  (cost=9903.94..9904.30 rows=36 width=3)
-- -[ RECORD 4 ]-----------------------------------------------------------------------
-- QUERY PLAN |         ->  Seq Scan on users  (cost=0.00..8690.96 rows=242596 width=3)

# Create a B-Tree index on users(lang)
CREATE INDEX lang_index ON users(lang);

# Returns all users, because no locations are NULL. 
SELECT COUNT(*) FROM users WHERE location IS NOT NULL;

# Returns some users, because some have a blank string for location
SELECT COUNT(*) FROM users WHERE location = '';

# Breakdown of stats per week based on how long a user has been on Twitter
SELECT date_trunc('week', created_at), count(*), avg(followers_count), avg(friends_count),  avg(favourites_count) FROM users GROUP BY date_trunc('week', created_at);


# Returns all of the distinct languages
SELECT distinct(lang) FROM users;

# Returns count of all distinct languages
SELECT count(distinct(lang)) FROM users;

# Average friend to follower ratio
SELECT AVG(friends_count)/AVG(followers_count) AS "friend to follower ratio" FROM users;

# Selects the length of the user's description
SELECT length(description) FROM users;

# Select average dataset
SELECT AVG(length(description)) FROM users;

# Displays number of tweets for each length
SELECT length(text), count(*) FROM tweets GROUP BY length(text);

# Using manual queries in Rails
my_tweet = Tweet.find_by_sql('SELECT * FROM tweets LIMIT 1').first