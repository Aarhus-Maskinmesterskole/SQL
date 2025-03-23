-- setup.sql til 02_joins

-- Ryd op hvis tabellerne allerede findes
drop table if exists enrollments;
drop table if exists students;

-- Opret students-tabellen
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

-- Opret enrollments-tabellen
create table enrollments (
  id int primary key,
  student_id int,
  course varchar(50),
  foreign key (student_id) references students(id)
);

insert into enrollments (id, student_id, course) values
(1, 1, 'SQL'),
(2, 1, 'Python'),
(3, 3, 'SQL'),
(4, 5, 'Linux');