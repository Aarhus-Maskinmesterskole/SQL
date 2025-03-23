-- setup.sql til 05_modification

-- Ryd op hvis tabellen findes
drop table if exists students;

-- Genskab students-tabellen
create table students (
  id int primary key,
  name varchar(50),
  age int
);

-- Indsæt startdata
insert into students (id, name, age) values
(1, 'Anna', 21),
(2, 'Mikkel', 24),
(3, 'Sofie', 22);