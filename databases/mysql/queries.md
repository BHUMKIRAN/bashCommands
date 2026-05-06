# MySQL Query Commands

## Select

```sql
SELECT * FROM users;
SELECT id, name FROM users;
SELECT * FROM users WHERE id = 1;
SELECT * FROM users WHERE name LIKE '%ram%';
SELECT * FROM users ORDER BY created_at DESC;
SELECT * FROM users LIMIT 10 OFFSET 20;
```

## Insert, Update, Delete

```sql
INSERT INTO users (name, email) VALUES ('Ram', 'ram@example.com');
UPDATE users SET name = 'Shyam' WHERE id = 1;
DELETE FROM users WHERE id = 1;
```

## Joins

```sql
SELECT users.name, orders.total
FROM users
JOIN orders ON orders.user_id = users.id;
```

## Aggregates

```sql
SELECT COUNT(*) FROM users;
SELECT status, COUNT(*) FROM orders GROUP BY status;
SELECT user_id, SUM(total) FROM orders GROUP BY user_id;
```

## Indexes

```sql
CREATE INDEX idx_users_email ON users(email);
SHOW INDEX FROM users;
DROP INDEX idx_users_email ON users;
```

