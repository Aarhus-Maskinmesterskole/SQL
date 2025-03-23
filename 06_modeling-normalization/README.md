# 🧱 06 - Databasemodellering og Normalisering

I denne workshop lærer du, hvordan man designer en relationel database med **entiteter, relationer og nøgler**. Du lærer også de tre første **normalformer**, så du kan strukturere dine tabeller korrekt.

---

## 🎯 Læringsmål

Efter denne workshop kan du:
- Forstå entiteter, attributter og relationer
- Identificere primærnøgler og fremmednøgler
- Anvende 1NF, 2NF og 3NF til at strukturere dine data
- Oprette en database ud fra et ER-diagram

---

## 🧭 Før du starter

Log ind og vælg databasen:
```bash
mysql -h 127.0.0.1 -P 3306 -u root -p
```
```sql
USE workshop;
```

---

## 📐 Eksempel: Bibliotekssystem

Vi skal modellere følgende:
- **Bog**: id, titel, årstal
- **Låner**: id, navn, email
- **Udlån**: id, bog_id, låner_id, dato

### ER-diagram (beskrevet i tekst):
- En **låner** kan låne mange bøger
- En **bog** kan lånes mange gange
- `udlån` er en relationstabel mellem `bog` og `låner`

---

## 🧪 Øvelser

### 1. Opret tabeller med nøgler
```sql
CREATE TABLE book (
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
```

### 2. Indsæt eksempeldata
```sql
INSERT INTO book VALUES (1, '1984', 1949);
INSERT INTO borrower VALUES (1, 'Anna', 'anna@mail.com');
INSERT INTO loan VALUES (1, 1, 1, '2024-04-01');
```

---

## 📁 Filer i denne workshop

| Filnavn         | Beskrivelse                                |
|------------------|---------------------------------------------|
| `setup.sql`      | Opretter og udfylder book/borrower/loan     |
| `kommandoer.txt` | SQL-eksempler til modellering og nøgler     |
| `README.md`      | Denne introduktion                          |

---

## 🏁 Næste trin

➡️ Gå videre til `07_mssql-docker/` og lær hvordan du starter en MSSQL Server i en Docker-container.

Dette modul er en del af SQL-workshoppen.