DROP TABLE people;
DROP TABLE houses;

CREATE TABLE houses
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  sigil VARCHAR(255),
  motto VARCHAR(255)
);

CREATE TABLE people
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  weapon VARCHAR(255),
  age INT,
  living BOOLEAN DEFAULT TRUE,
  image TEXT,
  house_id INT REFERENCES houses(id)
);

-- add three houses
INSERT INTO houses (name, sigil, motto) VALUES ('Stark', 'http://fc07.deviantart.net/fs70/f/2012/141/d/3/game_of_thrones_house_stark_sigil_render_by_titch_ix-d50m12c.png', 'Winter is Coming');

-- add 5 people
INSERT INTO people (name, weapon, age, image, house_id) VALUES ('Ned Stark', 'Ice', 45, 'ned.jpg', 1);