# 🔗 02 - JOINs

Denne workshop introducerer dig til JOINs, som bruges til at hente data fra flere tabeller baseret på relationer. Du lærer at bruge `INNER JOIN`, `LEFT JOIN`, og `RIGHT JOIN`, samt hvordan du læser og forstår resultatsæt på tværs af tabeller.

---

## 🎯 Læringsmål

Efter denne workshop kan du:
- Forstå relationer mellem tabeller (foreign keys)
- Bruge `INNER JOIN` til at hente sammenhængende data
- Bruge `LEFT JOIN` og `RIGHT JOIN` til at inkludere ikke-matchende data

---

## 🧭 Før du starter

Log ind på MariaDB:
```bash
mysql -h 127.0.0.1 -P 3306 -u root -p
```
Og vælg databasen:
```sql
USE workshop;
```

---

## 🗄️ Datamodel
Vi bruger følgende to tabeller:

### students
| id | name   | age |
|----|--------|-----|
| 1  | Anna   | 21  |
| 2  | Mikkel | 24  |
| 3  | Sofie  | 22  |
| 4  | Lukas  | 23  |
| 5  | Emil   | 20  |

### enrollments
| id | student_id | course     |
|----|------------|------------|
| 1  | 1          | SQL        |
| 2  | 1          | Python     |
| 3  | 3          | SQL        |
| 4  | 5          | Linux      |

---

## 🧪 Øvelser

### 1. Hent alle tilmeldinger med elevens navn (INNER JOIN)
```sql
SELECT s.name, e.course
FROM students s
INNER JOIN enrollments e ON s.id = e.student_id;
```
**Output:** Viser kun de elever, der er tilmeldt noget.

### 2. Hent alle elever og deres kurser (LEFT JOIN)
```sql
SELECT s.name, e.course
FROM students s
LEFT JOIN enrollments e ON s.id = e.student_id;
```
**Output:** Viser alle elever – også dem uden kurser (null).

### 3. Find elever uden nogen tilmeldinger
```sql
SELECT s.name
FROM students s
LEFT JOIN enrollments e ON s.id = e.student_id
WHERE e.course IS NULL;
```
**Output:** Viser kun Lukas og Mikkel (de har ingen tilmeldinger).

---

## 📁 Filer i denne workshop

| Filnavn         | Beskrivelse                                 |
|------------------|----------------------------------------------|
| `setup.sql`      | Opretter `students` og `enrollments`         |
| `kommandoer.txt` | Eksempler på JOIN-forespørgsler              |
| `README.md`      | Denne introduktion                           |

---

## 🏁 Næste trin

➡️ Gå videre til `03_aggregation/` og lær at gruppere og opsummere data med `GROUP BY` og aggregeringsfunktioner.

Dette modul er en del af SQL-workshoppen.