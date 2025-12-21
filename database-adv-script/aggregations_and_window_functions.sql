/* =========================================================
   1. Total number of bookings per user
   Using COUNT and GROUP BY
   ========================================================= */

SELECT 
    users.id AS user_id,
    users.first_name,
    users.last_name,
    COUNT(bookings.id) AS total_bookings
FROM users
LEFT JOIN bookings
    ON users.id = bookings.user_id
GROUP BY users.id, users.first_name, users.last_name
ORDER BY total_bookings DESC;


/* =========================================================
   2. Rank properties based on total number of bookings
   Using RANK() window function
   ========================================================= */

SELECT 
    properties.id AS property_id,
    properties.name AS property_name,
    COUNT(bookings.id) AS total_bookings,
    RANK() OVER (
        ORDER BY COUNT(bookings.id) DESC
    ) AS booking_rank
FROM properties
LEFT JOIN bookings
    ON properties.id = bookings.property_id
GROUP BY properties.id, properties.name
ORDER BY booking_rank;
