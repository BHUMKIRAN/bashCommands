# MongoDB Aggregation Commands

Aggregation processes documents through a pipeline. Each stage transforms, filters, groups, joins, or reshapes the documents before passing them to the next stage.

## Stage Definitions

- `$match` - Filter documents, similar to `find()`.
- `$group` - Combine documents by a key and calculate values like totals or counts.
- `$sort` - Order documents by one or more fields.
- `$project` - Include, exclude, rename, or calculate fields.
- `$lookup` - Join documents from another collection.
- `$unwind` - Split an array field into separate documents.
- `$count` - Count the documents that reach that stage.
- `$limit` - Return only a fixed number of documents.
- `$skip` - Skip a fixed number of documents, commonly used for pagination.
- `$addFields` - Add calculated fields without removing existing fields.

## Match, Group, Sort

```javascript
db.orders.aggregate([
  { $match: { status: "paid" } },
  { $group: { _id: "$userId", total: { $sum: "$amount" } } },
  { $sort: { total: -1 } }
])
```

## Match with Date Range

```javascript
db.orders.aggregate([
  {
    $match: {
      status: "paid",
      createdAt: {
        $gte: ISODate("2026-01-01T00:00:00Z"),
        $lt: ISODate("2026-02-01T00:00:00Z")
      }
    }
  }
])
```

## Project

```javascript
db.users.aggregate([
  { $project: { name: 1, email: 1, _id: 0 } }
])
```

## Add Fields

```javascript
db.orders.aggregate([
  {
    $addFields: {
      grandTotal: { $add: ["$amount", "$tax"] },
      isLargeOrder: { $gte: ["$amount", 1000] }
    }
  }
])
```

## Lookup

```javascript
db.orders.aggregate([
  {
    $lookup: {
      from: "users",
      localField: "userId",
      foreignField: "_id",
      as: "user"
    }
  }
])
```

## Lookup and Unwind

```javascript
db.orders.aggregate([
  {
    $lookup: {
      from: "users",
      localField: "userId",
      foreignField: "_id",
      as: "user"
    }
  },
  { $unwind: "$user" },
  {
    $project: {
      amount: 1,
      status: 1,
      userName: "$user.name",
      userEmail: "$user.email"
    }
  }
])
```

## Count and Limit

```javascript
db.orders.aggregate([
  { $match: { status: "paid" } },
  { $count: "paidOrders" }
])

db.orders.aggregate([
  { $sort: { createdAt: -1 } },
  { $limit: 10 }
])
```

## Pagination

```javascript
db.orders.aggregate([
  { $sort: { createdAt: -1 } },
  { $skip: 20 },
  { $limit: 10 }
])
```

## Group by Day

```javascript
db.orders.aggregate([
  {
    $group: {
      _id: {
        $dateToString: {
          format: "%Y-%m-%d",
          date: "$createdAt"
        }
      },
      totalSales: { $sum: "$amount" },
      orderCount: { $sum: 1 }
    }
  },
  { $sort: { _id: 1 } }
])
```

## Array Unwind

```javascript
db.orders.aggregate([
  { $unwind: "$items" },
  {
    $group: {
      _id: "$items.productId",
      quantitySold: { $sum: "$items.quantity" },
      revenue: { $sum: { $multiply: ["$items.quantity", "$items.price"] } }
    }
  },
  { $sort: { revenue: -1 } }
])
```

## Pipeline Tips

- Put `$match` early to reduce the number of documents processed.
- Put `$project` early when you only need a few fields.
- Use indexes on fields used in early `$match` and `$sort` stages.
- Use `$limit` after `$sort` when you only need top results.
- Check complex pipelines with `explain()` before using them on large collections.
