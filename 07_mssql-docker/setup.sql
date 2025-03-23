-- setup.sql til 07_mssql-docker

-- Brug testdatabase
USE master;
GO

IF DB_ID('testdb') IS NOT NULL
  DROP DATABASE testdb;
GO

CREATE DATABASE testdb;
GO

USE testdb;
GO

CREATE TABLE demo (
  id INT PRIMARY KEY,
  title NVARCHAR(100)
);

INSERT INTO demo (id, title) VALUES
(1, 'Test 1'),
(2, 'Test 2');
GO

SELECT * FROM demo;
GO
