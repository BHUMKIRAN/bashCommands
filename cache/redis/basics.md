# Redis Commands

## Connect

```bash
redis-cli
redis-cli -h localhost -p 6379
redis-cli -a password
```

## Strings

```redis
SET name "Ram"
GET name
DEL name
EXISTS name
SETEX token 3600 "abc123"
TTL token
INCR counter
DECR counter
```

## Lists

```redis
LPUSH queue job1
RPUSH queue job2
LPOP queue
RPOP queue
LRANGE queue 0 -1
LLEN queue
```

## Sets

```redis
SADD tags node redis
SMEMBERS tags
SISMEMBER tags redis
SREM tags node
```

## Hashes

```redis
HSET user:1 name "Ram" email "ram@example.com"
HGET user:1 name
HGETALL user:1
HDEL user:1 email
```

## Sorted Sets

```redis
ZADD leaderboard 100 ram
ZADD leaderboard 200 shyam
ZRANGE leaderboard 0 -1 WITHSCORES
ZREVRANGE leaderboard 0 9 WITHSCORES
```

## Admin

```redis
PING
INFO
DBSIZE
FLUSHDB
FLUSHALL
```

