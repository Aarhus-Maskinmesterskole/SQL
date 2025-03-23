# ⚙️ 00 - Installation af databasesoftware (MariaDB)

Før du kan begynde at arbejde med SQL-forespørgsler, skal du have en database installeret. I denne introduktion lærer du at installere **MariaDB**, som er en populær, gratis og open source SQL-database.

Du kan installere MariaDB lokalt eller køre den i en Docker-container. Begge muligheder gennemgås her.

---

## 🧩 Mulighed 1: Installation med Docker (anbefalet)

### 1. Start MariaDB-container

```bash
docker run --name mariadb \
  -e MARIADB_ROOT_PASSWORD=my-secret-pw \
  -e MARIADB_DATABASE=workshop \
  -p 3306:3306 \
  -d mariadb:latest
```

Dette starter en MariaDB-container med:
- adgang via `root` bruger
- adgangskode: `my-secret-pw`
- forvalgt database: `workshop`

### 2. Forbind med DBeaver, Azure Data Studio eller `mysql` CLI

```bash
mysql -h 127.0.0.1 -P 3306 -u root -p
```

---

## 🧩 Mulighed 2: Installation på Linux (Ubuntu/Debian)

```bash
sudo apt update
sudo apt install mariadb-server
sudo systemctl start mariadb
sudo mysql_secure_installation
```

---

## 🧩 Mulighed 3: Installation på Windows/macOS

1. Download fra [https://mariadb.org/download/](https://mariadb.org/download/)
2. Vælg "MariaDB Community Server"
3. Følg installationsguiden og notér root-adgangskode

> Alternativ: Brug **XAMPP** hvis du vil have en webserver og phpMyAdmin med.

---

## 🛠️ Tjek at det virker

Log ind med:
```bash
mysql -u root -p
```
Og kør fx:
```sql
SHOW DATABASES;
```

---

## 📁 Filer i denne mappe

- `docker-compose.yml` *(valgfri)*
- `README.md`
- Evt. CLI-opstarts-scripts

---

## 🏁 Klar til næste trin?

➡️ Gå videre til `01_select-basics/` og skriv dine første SQL-forespørgsler!

