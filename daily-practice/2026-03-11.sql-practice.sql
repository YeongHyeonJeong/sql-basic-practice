-- SQL Daily Practice
-- Date: 2026-03-11

## Problem 1. 고객별 총 주문 금액 구하기

### Tables

**customers**

| customer_id | name |
| ----------- | ---- |
| 1           | Kim  |
| 2           | Lee  |
| 3           | Park |

**orders**

| order_id | customer_id | amount |
| -------- | ----------- | ------ |
| 101      | 1           | 5000   |
| 102      | 1           | 7000   |
| 103      | 2           | 3000   |

### Task

customers 테이블과 orders 테이블을 이용하여
**고객별 총 주문 금액(total order amount)**을 구하시오.

### Expected Output

| name | total_amount |
| ---- | ------------ |
| Kim  | 12000        |
| Lee  | 3000         |

###My Attempt

```sql
SELECT name, SUM(amount) AS total_amount
FROM customers c
JOIN orders o
USING (customer_id)
GROUP BY customer_id;
```

### Solution

```sql
SELECT name, SUM(amount) AS total_amount
FROM customers c
JOIN orders o
USING (customer_id)
GROUP BY name;
```

---

## Problem 2. 고객별 주문 횟수 구하기

### Tables

**customers**

| customer_id | name |
| ----------- | ---- |
| 1           | Kim  |
| 2           | Lee  |
| 3           | Park |

**orders**

| order_id | customer_id | amount |
| -------- | ----------- | ------ |
| 101      | 1           | 5000   |
| 102      | 1           | 7000   |
| 103      | 2           | 3000   |

### Task

customers 테이블과 orders 테이블을 이용하여
**고객별 주문 횟수(order count)**를 구하시오.

### Expected Output

| name | order_count |
| ---- | ----------- |
| Kim  | 2           |
| Lee  | 1           |


###My Attempt

```sql
SELECT name, COUNT(order_id)
FROM customers c
LEFT JOIN orders o
USING (customner_id)
GROUP BY name;
```

### Solution

```sql
SELECT name, COUNT(order_id) AS order_count
FROM customers c
JOIN orders o
USING (customer_id)
GROUP BY name;
```

---

## Problem 3. 주문하지 않은 고객 찾기

### Tables

**customers**

| customer_id | name |
| ----------- | ---- |
| 1           | Kim  |
| 2           | Lee  |
| 3           | Park |

**orders**

| order_id | customer_id | amount |
| -------- | ----------- | ------ |
| 101      | 1           | 5000   |
| 102      | 1           | 7000   |
| 103      | 2           | 3000   |

### Task

orders 테이블에 **주문 기록이 없는 고객**을 찾으시오.

### Expected Output

| name |
| ---- |
| Park |

###My Attempt 

```sql
SELECT name, COUNT(order_id)
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id AND COUNT(order_id) ISNULL
GROUP BY name;
```

### Solution

```sql
SELECT name
FROM customers c
LEFT JOIN orders o
USING (customer_id)
WHERE order_id IS NULL;
```

---
