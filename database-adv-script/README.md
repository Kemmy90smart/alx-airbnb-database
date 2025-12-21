# SQL Joins Queries

This folder contains SQL queries demonstrating the use of different types of joins in the **Airbnb Database Project**.

## Queries

1. **INNER JOIN**  
   Retrieves all bookings and the respective users who made those bookings.

2. **LEFT JOIN**  
   Retrieves all properties and their reviews, including properties that have no reviews.

3. **FULL OUTER JOIN**  
   Retrieves all users and all bookings, even if a user has no booking or a booking is not linked to a user.

## Files
- `joins_queries.sql` → SQL queries
- `README.md` → Documentation

# SQL Subqueries – Practice

This task demonstrates the use of subqueries in SQL, including both non-correlated and correlated subqueries.

## Queries Included

### 1. Non-Correlated Subquery
Finds all properties where the **average rating is greater than 4.0**.
- Uses `GROUP BY` and `HAVING` in a subquery
- Filters properties based on the results

### 2. Correlated Subquery
Finds all users who have **made more than 3 bookings**.
- The subquery depends on the outer query (`b.user_id = u.id`)
- Returns all user details for users meeting the condition

## Files
- `subqueries.sql` – Contains all SQL subqueries
- `README.md` – Explains the purpose of each query
