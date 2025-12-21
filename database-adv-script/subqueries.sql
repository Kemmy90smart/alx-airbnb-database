/* =========================================================
   1. Subquery – Find properties with average rating > 4.0
   Non-correlated subquery
   ========================================================= */

SELECT *
FROM properties
WHERE id IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
)
ORDER BY id;


/* =========================================================
   2. Correlated Subquery – Find users with more than 3 bookings
   ========================================================= */

SELECT *
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.id
) > 3
ORDER BY u.id;
