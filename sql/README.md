# 🗄️ Retail E-Commerce Relational Database & Advanced SQL Analytics

[![MySQL](https://img.shields.io/badge/MySQL-8.0%2B-4479A1.svg?logo=mysql&logoColor=white)](https://www.mysql.com/)
[![SQL](https://img.shields.io/badge/SQL-Advanced_Queries_%26_Window_Functions-blue.svg)](https://en.wikipedia.org/wiki/SQL)
[![Database Design](https://img.shields.io/badge/Database-Normalized_3NF_Schema-005C84.svg)](https://en.wikipedia.org/wiki/Third_normal_form)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 📌 Executive Overview
Relational database management systems (RDBMS) form the backbone of enterprise transactional processing and business analytics. This project delivers a production-grade **Retail E-Commerce Relational Database Architecture** in **MySQL / ANSI SQL**, accompanied by an exhaustive analytical query suite spanning **6 progressive complexity tiers**.

The database models customer interactions, product catalogs, order fulfillment, multi-line order items, payment gateway transactions, and customer product reviews.

---

## 🏗️ Entity-Relationship (ER) Architecture

```text
+------------------------+                   +------------------------+
|       customers        |                   |        products        |
+------------------------+                   +------------------------+
| PK  customer_id        |                   | PK  product_id         |
|     name               |                   |     name, category     |
|     email (UNIQUE)     |                   |     price              |
|     phone, created_at  |                   |     stock_quantity     |
+-----------+------------+                   +-----------+------------+
            | 1                                          | 1
            |                                            |
            | N                                          | N
+-----------v------------+                   +-----------v------------+
|         orders         | 1               N |      order_items       |
+------------------------+-------------------+------------------------+
| PK  order_id           |                   | PK  order_item_id      |
| FK  customer_id        |                   | FK  order_id           |
|     order_date         |                   | FK  product_id         |
|     status, total_amt  |                   |     quantity, item_pr  |
+-----------+------------+                   +------------------------+
            | 1
            |
            | N
+-----------v------------+                   +------------------------+
|        payments        |                   |    product_reviews     |
+------------------------+                   +------------------------+
| PK  payment_id         |                   | PK  review_id          |
| FK  order_id           |                   | FK  product_id         |
|     payment_date       |                   | FK  customer_id        |
|     amount_paid, method|                   |     rating, review_txt |
+------------------------+                   +------------------------+
```

---

## 📁 Repository Structure

```text
sql/
├── SQL_Mini_Project_Queries.sql          # Complete DDL schema + 6-level analytical SQL queries
├── DataInsertionQueries.sql               # Production-grade mock transaction & master data inserts
├── SQL Mini Project.pdf                   # Project requirements brief & problem statement
└── README.md                             # Detailed project documentation
```

---

## 🧮 Progressive SQL Analytics Query Suite

### 🔹 Tier 1: Schema DDL & Foundational Data Retrieval
* **Normalized DDL Setup**: Primary keys, auto-increment sequences, foreign key constraints, `CHECK (quantity > 0)`, `CHECK (amount_paid > 0)`, and `UNIQUE` email integrity constraints.
* **Filtering & Range Logic**: `BETWEEN` price brackets, pattern matching with `LIKE 'A%'`, set membership (`IN`), and multi-column sorting (`ORDER BY price DESC, name ASC`).

### 🔹 Tier 2: Column Transformations, String Formatting & Auditing
* **Expression Fields**: Real-time line-item extension calculations (`quantity * item_price AS total_item_value`).
* **String & Date Wrangling**: `CONCAT(name, ' - ', phone)` for unified CRM contact cards, `DATE(order_date)` extraction for daily reporting, and inventory stockout tracking (`stock_quantity = 0`).

### 🔹 Tier 3: Multi-Variable Aggregations & Business Metrics
* **Key Financial Metrics**: Total Gross Revenue (`SUM(total_amount)`), Average Order Value (`ROUND(AVG(total_amount), 2)`), active purchasing customer counts (`COUNT(DISTINCT customer_id)`).
* **Dimensional Groupings**: Product category sales volume, average unit pricing per category, temporal daily order run-rates, and payment gateway revenue distribution.

```sql
-- Payment Gateway Revenue Breakdown
SELECT method,
       ROUND(SUM(amount_paid), 2) AS total_received
FROM payments
GROUP BY method
ORDER BY total_received DESC;
```

### 🔹 Tier 4: Relational Multi-Table Joins
* **Multi-Table Syntheses**: `INNER JOIN` across `customers`, `orders`, and `payments` to generate comprehensive end-to-end transaction audit logs.
* **Non-Matching Entity Audits**: `LEFT JOIN` with `IFNULL(SUM(oi.quantity), 0)` to surface zero-sales catalog items; `RIGHT JOIN` on payment gateways to detect unlinked settlement transactions.

```sql
-- Comprehensive 3-Way Transaction Report
SELECT c.name AS customer_name,
       c.email,
       o.order_id,
       o.order_date,
       o.status,
       o.total_amount,
       pay.method AS payment_method,
       pay.amount_paid,
       pay.payment_date
FROM customers c
INNER JOIN orders o   ON c.customer_id = o.customer_id
INNER JOIN payments pay ON o.order_id  = pay.order_id
ORDER BY o.order_date DESC;
```

### 🔹 Tier 5: Advanced Subqueries & Window Functions
* **Correlated & Existence Subqueries**: `WHERE EXISTS` / `NOT EXISTS` to isolate churned customer accounts and zero-order SKUs without expensive outer joins.
* **Window Functions (ROW_NUMBER)**: Identifying the highest-value transaction per customer partition:

```sql
-- Highest Value Order Per Customer using Window Function
SELECT c.name AS customer_name,
       o.order_id,
       o.total_amount AS highest_order_amount
FROM (
    SELECT customer_id,
           order_id,
           total_amount,
           ROW_NUMBER() OVER (
               PARTITION BY customer_id
               ORDER BY total_amount DESC
           ) AS rn
    FROM orders
) o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.rn = 1
ORDER BY o.total_amount DESC;
```

### 🔹 Tier 6: Set Operations & Cross-Channel Engagement
* **Set Theory Operations**: `UNION` and simulated `INTERSECT` to segment customers who actively purchase vs those who engage via product reviews.

---

## 🚀 Execution & Setup Guide

```bash
# Connect to MySQL CLI
mysql -u root -p

# Execute Schema Creation
source sql/SQL_Mini_Project_Queries.sql;

# Ingest Records
source sql/DataInsertionQueries.sql;
```

---

## 👤 Author & Contact
* **Kartik Tripathi**
* **LinkedIn**: [linkedin.com/in/kartik-tripathi-725697383](https://www.linkedin.com/in/kartik-tripathi-725697383)
* **GitHub**: [github.com/ktkartik1234-lgtm](https://github.com/ktkartik1234-lgtm)
* **Email**: [ktkartik1234@gmail.com](mailto:ktkartik1234@gmail.com)
