-- setup.sql til 04_subqueries

-- Ryd op hvis tabellerne findes
drop table if exists enrollments;
drop table if exists students;
drop view if exists sql_kurser;

-- Genskab students-tabellen
create table students (
  id int primary key,
  name varchar(50),
  age int
);

insert into students (id, name, age) values
(1, 'Anna', 21),
(2, 'Mikkel', 24),
(3, 'Sofie', 22),
(4, 'Lukas', 23),
(5, 'Emil', 20);

-- Genskab enrollments-tabellen
create table enrollments (
  id int primary key,
  student_id int,
  course varchar(50),
  semester varchar(10),
  foreign key (student_id) references students(id)
);

insert into enrollments (id, student_id, course, semester) values
(1, 1, 'SQL', 'Fall'),
(2, 1, 'Python', 'Spring'),
(3, 3, 'SQL', 'Fall'),
(4, 5, 'Linux', 'Fall'),
(5, 2, 'SQL', 'Fall');