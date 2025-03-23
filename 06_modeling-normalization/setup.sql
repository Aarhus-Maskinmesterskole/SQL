-- setup.sql til 06_modeling-normalization

-- Ryd op hvis tabeller findes
drop table if exists loan;
drop table if exists book;
drop table if exists borrower;

-- Opret tabeller\CREATE TABLE book (
  id INT PRIMARY KEY,
  title VARCHAR(100),
  year INT
);

CREATE TABLE borrower (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(100)
);

CREATE TABLE loan (
  id INT PRIMARY KEY,
  book_id INT,
  borrower_id INT,
  loan_date DATE,
  FOREIGN KEY (book_id) REFERENCES book(id),
  FOREIGN KEY (borrower_id) REFERENCES borrower(id)
);

-- Indsæt testdata
INSERT INTO book VALUES (1, '1984', 1949);
INSERT INTO book VALUES (2, 'Brave New World', 1932);

INSERT INTO borrower VALUES (1, 'Anna', 'anna@mail.com');
INSERT INTO borrower VALUES (2, 'Sofie', 'sofie@mail.com');

INSERT INTO loan VALUES (1, 1, 1, '2024-04-01');
INSERT INTO loan VALUES (2, 2, 2, '2024-04-02');