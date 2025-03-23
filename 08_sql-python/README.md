# 🐍 08 - SQL og Python

Denne workshop viser, hvordan du kan arbejde med en SQL-database direkte fra Python. Du lærer at bruge **`sqlite3`** (lokal database) og får en introduktion til at bruge **`pandas`** sammen med SQL.

---

## 🎯 Læringsmål

Efter denne workshop kan du:
- Oprette og tilgå en SQLite-database fra Python
- Køre SQL-forespørgsler fra Python
- Hente og analysere data med `pandas`
- Bruge `pandas.read_sql_query()` til dataanalyse

---

## 📦 Installation af nødvendige pakker

```bash
pip install pandas
```
> (sqlite3 følger med Python som standard)

---

## 🧪 Eksempel: Opret og brug en database i Python

```python
import sqlite3
import pandas as pd

# Opret forbindelse til database (eller opret ny fil)
conn = sqlite3.connect("data.db")
cursor = conn.cursor()

# Opret tabel
cursor.execute("""
CREATE TABLE IF NOT EXISTS students (
  id INTEGER PRIMARY KEY,
  name TEXT,
  age INTEGER
);
""")

# Indsæt data
cursor.execute("INSERT INTO students VALUES (1, 'Anna', 21)")
cursor.execute("INSERT INTO students VALUES (2, 'Mikkel', 24)")
conn.commit()

# Læs data med pandas
df = pd.read_sql_query("SELECT * FROM students", conn)
print(df)

conn.close()
```

**Output:**
```
   id    name  age
0   1    Anna   21
1   2  Mikkel   24
```

---

## 📁 Filer i denne workshop

| Filnavn         | Beskrivelse                              |
|------------------|-------------------------------------------|
| `script.py`       | Python-eksempel med sqlite3 og pandas     |
| `README.md`       | Denne introduktion                        |

---

## 🏁 Næste trin

➡️ Gå videre til `09_project-template/` og lav dit eget mini-projekt baseret på det du har lært!

Dette modul er en del af SQL-workshoppen.