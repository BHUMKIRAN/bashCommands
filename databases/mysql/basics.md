# MySQL Basic Commands

## Login

```bash
mysql -u root -p
mysql -u username -p database_name
```

## Databases

```sql
SHOW DATABASES;
CREATE DATABASE app_db;
USE app_db;
DROP DATABASE app_db;
```

## Tables

```sql
SHOW TABLES;
DESCRIBE users;
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
DROP TABLE users;
TRUNCATE TABLE users;
```

## Backup and Restore

```bash
mysqldump -u root -p app_db > app_db.sql
mysql -u root -p app_db < app_db.sql
```

