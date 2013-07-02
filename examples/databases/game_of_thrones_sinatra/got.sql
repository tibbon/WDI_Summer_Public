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
INSERT INTO houses (name, sigil, motto) VALUES ('Stark', 'http://images1.wikia.nocookie.net/__cb20120427065254/gameofthrones/images/4/4f/Stark.JPG', 'Winter is Coming');
INSERT INTO houses (name, sigil, motto) VALUES ('Lannister', 'http://images3.wikia.nocookie.net/__cb20130417013424/gameofthrones/images/thumb/a/ac/Lannister.JPG/250px-Lannister.JPG', 'Hear Me Roar!');
INSERT INTO houses (name, sigil, motto) VALUES ('Targaryen', 'http://images3.wikia.nocookie.net/__cb20120427070710/gameofthrones/images/thumb/f/f8/Targaryen.JPG/250px-Targaryen.JPG', 'Fire and Blood');

-- add 5 people
INSERT INTO people (name, weapon, age, image, house_id) VALUES
('Eddard Stark', 'Ice', 40, 'http://images2.wikia.nocookie.net/__cb20110626030944/gameofthrones/images/thumb/9/9c/EddardStark.jpg/250px-EddardStark.jpg', 1),
('Arya Stark', 'Needle', 13, 'http://images2.wikia.nocookie.net/__cb20130603051038/gameofthrones/images/thumb/6/6b/Rain_of_castamere_arya_s3_ep9.png/250px-Rain_of_castamere_arya_s3_ep9.png', 1),
('Tyrion Lannister', 'Brains', 25, 'http://images1.wikia.nocookie.net/__cb20130526212602/gameofthrones/images/thumb/0/06/Second_sons_Tyrion.png/250px-Second_sons_Tyrion.png', 2),
('Jaime Lannister', 'Brains', 30, 'http://images3.wikia.nocookie.net/__cb20130610164204/gameofthrones/images/thumb/0/04/Jaime_Mhysa_finale.png/250px-Jaime_Mhysa_finale.png', 2),
('Daenerys Targaryen', 'Dragons', 18, 'http://images3.wikia.nocookie.net/__cb20130127151117/gameofthrones/images/thumb/6/62/Daenerys_S3.jpg/250px-Daenerys_S3.jpg', 3);
