-- setup.sql til 08_sql-python

DROP TABLE IF EXISTS students;

CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER CHECK(age >= 0)
);

INSERT INTO students (id, name, age) VALUES
(1, 'Anna', 21),
(2, 'Mikkel', 24);
