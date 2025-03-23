# 🧠 04 - Subqueries og Views

I denne workshop lærer du at bruge **subqueries** (forespørgsler i forespørgsler) og hvordan du kan gemme komplekse forespørgsler som **views**. Du vil arbejde med både `SELECT`-subqueries og filtrering med `IN` og `EXISTS`.

---

## 🎯 Læringsmål

Efter denne workshop kan du:
- Skrive subqueries i `SELECT`, `WHERE` og `FROM`
- Bruge `IN` og `EXISTS` med subqueries
- Oprette og bruge views i din database

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
Vi genbruger `students` og `enrollments` fra tidligere:

| students         | enrollments                    |
|------------------|----------------------------------|
| id, name, age    | id, student_id, course, semester |

---

## 🧪 Øvelser

### 1. Find navne på elever, der er tilmeldt kurset 'SQL'
```sql
SELECT name
FROM students
WHERE id IN (
  SELECT student_id
  FROM enrollments
  WHERE course = 'SQL'
);
```

### 2. Find elever, der ikke er tilmeldt noget (med NOT EXISTS)
```sql
SELECT name
FROM students s
WHERE NOT EXISTS (
  SELECT *
  FROM enrollments e
  WHERE s.id = e.student_id
);
```

### 3. Gennemsnitsalder for elever, der tager 'Fall'-kurser
```sql
SELECT AVG(age) AS gennemsnitsalder
FROM students
WHERE id IN (
  SELECT student_id
  FROM enrollments
  WHERE semester = 'Fall'
);
```

### 4. Opret et view over alle SQL-kurser
```sql
CREATE OR REPLACE VIEW sql_kurser AS
SELECT s.name, e.course, e.semester
FROM students s
JOIN enrollments e ON s.id = e.student_id
WHERE e.course = 'SQL';

-- Brug viewet:
SELECT * FROM sql_kurser;
```

---

## 📁 Filer i denne workshop

| Filnavn         | Beskrivelse                             |
|------------------|------------------------------------------|
| `setup.sql`      | Genopretter data til subquery-øvelser    |
| `kommandoer.txt` | Subquery-eksempler og syntaks            |
| `README.md`      | Denne introduktion                       |

---

## 🏁 Næste trin

➡️ Gå videre til `05_modification/` og lær hvordan du ændrer data med `INSERT`, `UPDATE`, `DELETE` og bruger transaktioner.

Dette modul er en del af SQL-workshoppen.