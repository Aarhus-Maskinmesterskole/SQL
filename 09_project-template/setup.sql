-- setup.sql - Korrekt og normaliseret bibliotekssystem

-- Ryd op hvis tabeller findes (i rigtig rækkefølge pga. FK)
DROP TABLE IF EXISTS loan;
DROP TABLE IF EXISTS book;
DROP TABLE IF EXISTS author;
DROP TABLE IF EXISTS borrower;

-- Opret forfattere
CREATE TABLE author (
  id INT PRIMARY KEY,
  name VARCHAR(100)
);

-- Opret bøger
CREATE TABLE book (
  id INT PRIMARY KEY,
  title VARCHAR(100),
  year INT,
  author_id INT,
  FOREIGN KEY (author_id) REFERENCES author(id)
);

-- Opret låner
CREATE TABLE borrower (
  id INT PRIMARY KEY,
  name VARCHAR(100)
);

-- Opret udlån
CREATE TABLE loan (
  id INT PRIMARY KEY,
  book_id INT,
  borrower_id INT,
  loan_date DATE,
  FOREIGN KEY (book_id) REFERENCES book(id),
  FOREIGN KEY (borrower_id) REFERENCES borrower(id)
);

-- Indsæt data
INSERT INTO author (id, name) VALUES
  (1, 'George Orwell'),
  (2, 'Aldous Huxley');

INSERT INTO book (id, title, year, author_id) VALUES
  (1, '1984', 1949, 1),
  (2, 'Brave New World', 1932, 2);

INSERT INTO borrower (id, name) VALUES
  (1, 'Anna'),
  (2, 'Mikkel');

INSERT INTO loan (id, book_id, borrower_id, loan_date) VALUES
  (1, 1, 1, '2024-04-01'),
  (2, 2, 2, '2024-04-02');
