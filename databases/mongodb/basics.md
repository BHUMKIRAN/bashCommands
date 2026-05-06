# MongoDB Basic Commands

## Shell

```bash
mongosh
mongosh "mongodb://localhost:27017"
mongosh "mongodb://username:password@localhost:27017/app_db"
```

## Databases

```javascript
show dbs
use app_db
db
db.dropDatabase()
```

## Collections

```javascript
show collections
db.createCollection("users")
db.users.drop()
```

## Backup and Restore

```bash
mongodump --db app_db --out backup
mongorestore --db app_db backup/app_db
mongoexport --db app_db --collection users --out users.json
mongoimport --db app_db --collection users --file users.json
```

