# 📊 03 - Aggregation

Denne workshop handler om, hvordan man opsummerer og grupperer data med SQL. Du lærer at bruge `GROUP BY` sammen med funktioner som `COUNT()`, `AVG()`, `SUM()` og `HAVING`.

---

## 🎯 Læringsmål

Efter denne workshop kan du:
- Gruppere rækker med `GROUP BY`
- Anvende aggregeringsfunktioner som `COUNT`, `AVG`, `SUM`
- Filtrere grupper med `HAVING`

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
Vi bruger stadig `students` og `enrollments` fra forrige modul:

### enrollments (udvidet)
| id | student_id | course   | semester |
|----|------------|----------|----------|
| 1  | 1          | SQL      | Fall     |
| 2  | 1          | Python   | Spring   |
| 3  | 3          | SQL      | Fall     |
| 4  | 5          | Linux    | Fall     |
| 5  | 2          | SQL      | Fall     |

---

## 🧪 Øvelser

### 1. Antal tilmeldinger pr. kursus
```sql
SELECT course, COUNT(*) AS antal_tilmeldinger
FROM enrollments
GROUP BY course;
```
**Output:**
| course | antal_tilmeldinger |
|--------|--------------------|
| SQL    | 3                  |
| Python | 1                  |
| Linux  | 1                  |

### 2. Antal elever pr. semester
```sql
SELECT semester, COUNT(DISTINCT student_id) AS unikke_elever
FROM enrollments
GROUP BY semester;
```

### 3. Vis kun kurser med mere end 1 tilmelding
```sql
SELECT course, COUNT(*) AS antal
FROM enrollments
GROUP BY course
HAVING COUNT(*) > 1;
```

---

## 📁 Filer i denne workshop

| Filnavn         | Beskrivelse                                |
|------------------|---------------------------------------------|
| `setup.sql`      | Udvider `enrollments`-tabellen med semester |
| `kommandoer.txt` | Eksempler på `GROUP BY`, `HAVING`, osv.     |
| `README.md`      | Denne introduktion                          |

---

## 🏁 Næste trin

➡️ Gå videre til `04_subqueries/` og lær hvordan man laver forespørgsler i forespørgsler med subqueries og views.

Dette modul er en del af SQL-workshoppen.

