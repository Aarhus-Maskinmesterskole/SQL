# 🐳 07 - MSSQL i Docker

I denne workshop lærer du, hvordan du kører en Microsoft SQL Server (MSSQL) i en Docker-container. Du lærer at:
- Starte containeren med den rigtige konfiguration
- Tilgå MSSQL med en SQL-klient (Azure Data Studio eller sqlcmd)
- Køre SQL-filer og kommandoer mod databasen

---

## 🎯 Læringsmål

Efter denne workshop kan du:
- Starte MSSQL i Docker
- Logge ind med en klient
- Oprette en database og tabeller i MSSQL
- Køre SQL-scripts

---

## 🧭 Forudsætninger

- Docker skal være installeret (se `00_installation/`)
- Du skal bruge enten **Azure Data Studio** eller terminal med `sqlcmd`

---

## ⚙️ Start MSSQL i Docker

Opret en fil `docker-compose.yml` med følgende:

```yaml
version: '3.9'
services:
  mssql:
    image: mcr.microsoft.com/mssql/server:2022-lts
    container_name: mssql
    environment:
      - ACCEPT_EULA=Y
      - SA_PASSWORD=YourStrongPassword1!
    ports:
      - "1433:1433"
```

Start containeren:
```bash
docker compose up -d
```

---

## 🛠️ Forbind med Azure Data Studio

1. Download fra https://learn.microsoft.com/en-us/sql/azure-data-studio/
2. Forbind til:
   - **Server**: `localhost`
   - **Login**: `sa`
   - **Password**: `YourStrongPassword1!`

---

## 💻 Alternativ: Brug sqlcmd i terminalen

```bash
docker exec -it mssql /opt/mssql-tools/bin/sqlcmd \
  -S localhost -U sa -P YourStrongPassword1!
```

Eksempel-kommando:
```sql
CREATE DATABASE testdb;
```

---

## 🧪 Test med SQL-fil

Hvis du har en `.sql`-fil:
```bash
docker cp setup.sql mssql:/setup.sql

docker exec -it mssql /opt/mssql-tools/bin/sqlcmd \
  -S localhost -U sa -P YourStrongPassword1! -i /setup.sql
```

---

## 📁 Filer i denne workshop

| Filnavn             | Beskrivelse                          |
|----------------------|---------------------------------------|
| `docker-compose.yml` | Starter MSSQL-container               |
| `setup.sql`          | Valgfri testfil til import            |
| `README.md`          | Denne introduktion                    |

---

## 🏁 Næste trin

➡️ Gå videre til `08_sql-python/` og lær hvordan man tilgår SQL-databaser direkte fra Python.

Dette modul er en del af SQL-workshoppen.