-- setup.sql: Opretter og indsætter data i 'students'-tabellen

DROP TABLE IF EXISTS students;

CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  grade INT
);

INSERT INTO students (id, name, age, grade) VALUES
  (1, 'Anna', 21, 10),
  (2, 'Mikkel', 24, 7),
  (3, 'Sofie', 22, 12),
  (4, 'Lukas', 23, 4),
  (5, 'Emil', 20, 2);