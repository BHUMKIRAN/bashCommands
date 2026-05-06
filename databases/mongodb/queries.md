# MongoDB Query Commands

## Insert

```javascript
db.users.insertOne({ name: "Ram", email: "ram@example.com" })
db.users.insertMany([{ name: "Ram" }, { name: "Shyam" }])
```

## Find

```javascript
db.users.find()
db.users.findOne({ email: "ram@example.com" })
db.users.find({ age: { $gte: 18 } })
db.users.find().sort({ createdAt: -1 })
db.users.find().limit(10)
db.users.find().skip(20).limit(10)
```

## Update

```javascript
db.users.updateOne({ email: "ram@example.com" }, { $set: { name: "Ram B" } })
db.users.updateMany({ active: false }, { $set: { archived: true } })
db.users.replaceOne({ email: "ram@example.com" }, { name: "Ram", email: "ram@example.com" })
```

## Delete

```javascript
db.users.deleteOne({ email: "ram@example.com" })
db.users.deleteMany({ archived: true })
```

## Indexes

```javascript
db.users.createIndex({ email: 1 }, { unique: true })
db.users.getIndexes()
db.users.dropIndex("email_1")
```

