# ✏️ 05 - Dataændringer og Transaktioner

Denne workshop lærer dig, hvordan du ændrer data i databasen med `INSERT`, `UPDATE` og `DELETE`. Du bliver også introduceret til **transaktioner** med `BEGIN`, `COMMIT` og `ROLLBACK`.

---

## 🎯 Læringsmål

Efter denne workshop kan du:
- Indsætte nye rækker med `INSERT`
- Opdatere eksisterende data med `UPDATE`
- Fjerne data med `DELETE`
- Sikre dataintegritet med transaktioner

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

## 🗄️ Datamodel
Vi bruger en enkel `students`-tabel til øvelserne:

| id | name   | age |
|----|--------|-----|
| 1  | Anna   | 21  |
| 2  | Mikkel | 24  |
| 3  | Sofie  | 22  |

---

## 🧪 Øvelser

### 1. Indsæt en ny elev
```sql
INSERT INTO students (id, name, age)
VALUES (4, 'Lukas', 23);
```

### 2. Opdatér alderen for en elev
```sql
UPDATE students
SET age = 25
WHERE name = 'Mikkel';
```

### 3. Slet en elev
```sql
DELETE FROM students
WHERE name = 'Anna';
```

### 4. Brug en transaktion
```sql
START TRANSACTION;
UPDATE students SET age = 99 WHERE name = 'Sofie';
ROLLBACK;
-- Sofies alder forbliver uændret

START TRANSACTION;
UPDATE students SET age = 23 WHERE name = 'Sofie';
COMMIT;
-- Nu gemmes ændringen
```

---

## 📁 Filer i denne workshop

| Filnavn         | Beskrivelse                                 |
|------------------|----------------------------------------------|
| `setup.sql`      | Genskaber students-tabellen til test         |
| `kommandoer.txt` | Eksempler på INSERT, UPDATE, DELETE, TXN     |
| `README.md`      | Denne introduktion                           |

---

## 🏁 Næste trin

➡️ Gå videre til `06_modeling-normalization/` og lær hvordan man designer databaser med relationer og normaliserer tabeller.

Dette modul er en del af SQL-workshoppen.