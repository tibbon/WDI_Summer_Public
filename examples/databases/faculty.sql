DROP TABLE faculty;
DROP TABLE department;

CREATE TABLE faculty
(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(25),
  last_name VARCHAR(25),
  dept_id INT REFERENCES departments(id)
);

CREATE TABLE departments
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(50)
);

INSERT INTO departments (name) VALUES
('WDI'),
('FEWD'),
('Marketing'),
('UX');

INSERT INTO faculty (first_name, last_name, dept_id) VALUES
('Dylan', 'OShea', 1),
('Phillip', 'Lamplugh', 1),
('Chyld', 'Medford', 1),
('Omar', 'Delarosa', 4),
('Lara', 'Iden', 4);

INSERT INTO faculty (first_name, last_name) VALUES
('Dan', 'Garland');


-- cross join
-- goes through every row in faculty on department_id 1
-- then goes through every row in faculty on department_id 2
-- etc
SELECT * FROM faculty CROSS JOIN departments

-- inner joins
-- default
-- equijoin. only uses equality ==
-- returns rows where there is at elast one match
SELECT * FROM faculty INNER JOIN departments ON Faculty.dept_id = Departments.id;

-- INNER JOIN: Returns all rows when there is at least one match in BOTH tables
-- LEFT JOIN: Return all rows from the left table, and the matched rows from the right table
-- RIGHT JOIN: Return all rows from the right table, and the matched rows from the left table
-- FULL JOIN: Return all rows when there is a match in ONE of the tables

-- natural join
-- equijoin with only one column for each equally named column
-- can rely on dept_id and departments.id
SELECT * FROM faculty NATURAL JOIN departments;

-- FULL OUTER JOIN
-- returns rows where there is a match in at least one of the tables
-- returns everything plus what's left out
SELECT * FROM faculty FULL OUTER JOIN departments ON Faculty.dept_id = Departments.id;

-- Right outer join
-- return all rows from the right table (depts) even if there are no matches in the left
SELECT * FROM faculty RIGHT OUTER JOIN departments ON Faculty.dept_id = Departments.id;

-- Left outer join
-- return all rows from the left table(faculty) even if there are no matches in right (dept)
SELECT * FROM faculty LEFT OUTER JOIN departments ON faculty.dept_id = departments.id;