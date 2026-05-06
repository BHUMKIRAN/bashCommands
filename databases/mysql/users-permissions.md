# MySQL Users and Permissions

## Users

```sql
CREATE USER 'app_user'@'localhost' IDENTIFIED BY 'strong_password';
SELECT user, host FROM mysql.user;
DROP USER 'app_user'@'localhost';
```

## Grants

```sql
GRANT ALL PRIVILEGES ON app_db.* TO 'app_user'@'localhost';
GRANT SELECT, INSERT, UPDATE ON app_db.* TO 'app_user'@'localhost';
SHOW GRANTS FOR 'app_user'@'localhost';
REVOKE INSERT ON app_db.* FROM 'app_user'@'localhost';
FLUSH PRIVILEGES;
```

## Change Password

```sql
ALTER USER 'app_user'@'localhost' IDENTIFIED BY 'new_password';
```

