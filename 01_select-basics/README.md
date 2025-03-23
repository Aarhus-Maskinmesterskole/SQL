# 📘 01 - SELECT Basics

Denne workshop introducerer dig til de mest grundlæggende SQL-forespørgsler. Du vil lære at hente data fra en database med `SELECT`, filtrere med `WHERE`, sortere med `ORDER BY` og begrænse resultater med `LIMIT` (eller `TOP` i MSSQL).

---

## 🧭 Før du starter: Log ind på databasen

Åbn en terminal og kør følgende kommando for at logge ind på din MariaDB-server (hvis du har startet den via Docker):

```bash
mysql -h 127.0.0.1 -P 3306 -u root -p
```

Indtast adgangskoden `my-secret-pw` eller den du selv har valgt.

Vælg derefter databasen:
```sql
USE workshop;
```

---

## 🎯 Læringsmål

Efter denne workshop kan du:
- Hente data med `SELECT`
- Filtrere med `WHERE`
- Sortere med `ORDER BY`
- Begrænse rækker med `LIMIT`/`TOP`
- Anvende forespørgsler både i MySQL/MariaDB og MSSQL

---

## 🧠 Kort om SELECT

`SELECT` bruges til at hente data fra én eller flere tabeller i en relationel database. Du kan vælge alle kolonner (`*`) eller kun udvalgte kolonner.

Eksempel:
```sql
SELECT name, grade FROM students;
```

---

## 🗄️ Datamodel

Vi bruger en simpel tabel `students`:

| id | name   | age | grade |
|----|--------|-----|--------|
| 1  | Anna   | 21  | 10     |
| 2  | Mikkel | 24  | 7      |
| 3  | Sofie  | 22  | 12     |
| 4  | Lukas  | 23  | 4      |
| 5  | Emil   | 20  | 2      |

Denne oprettes via `setup.sql`

---

## 🧪 Øvelser

### 1. Vælg alt fra tabellen
```sql
SELECT * FROM students;
```
**Output:** Alle rækker og kolonner fra tabellen

### 2. Vælg kun navn og karakter
```sql
SELECT name, grade FROM students;
```
**Output:**
| name   | grade |
|--------|--------|
| Anna   | 10     |
| Mikkel | 7      |
| Sofie  | 12     |
| Lukas  | 4      |
| Emil   | 2      |

### 3. Find elever over 21 år
```sql
SELECT * FROM students WHERE age > 21;
```
**Output:** Mikkel, Sofie og Lukas

### 4. Find elever med karakter over 7, sorteret alfabetisk
```sql
SELECT name, grade FROM students WHERE grade > 7 ORDER BY name ASC;
```
**Output:**
| name | grade |
|------|--------|
| Anna | 10     |
| Sofie| 12     |

### 5. Top 3 elever med højeste karakter
```sql
-- MariaDB / MySQL
SELECT name, grade FROM students ORDER BY grade DESC LIMIT 3;

-- MSSQL
SELECT TOP 3 name, grade FROM students ORDER BY grade DESC;
```
**Output:** Sofie (12), Anna (10), Mikkel (7)

---

## 📁 Filer i denne workshop

| Filnavn         | Beskrivelse                                |
|------------------|---------------------------------------------|
| `setup.sql`      | SQL til at oprette og udfylde tabellen      |
| `kommandoer.txt` | Liste over kommandoer og syntaks            |
| `README.md`      | Denne introduktion                          |

---

## 🧠 Refleksion

- Hvad sker der, hvis du glemmer `WHERE` i en søgning?
- Hvad er forskellen på `ORDER BY name` og `ORDER BY grade DESC`?
- Kan du kombinere `WHERE` og `ORDER BY`?

---

## 🏁 Næste trin

➡️ Gå videre til `02_joins/` og lær at hente data fra flere tabeller med `JOIN`

Dette modul er en del af SQL-workshoppen.
