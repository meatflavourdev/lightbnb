/* SELECT p.id, p.title, p.cost_per_night, r.start_date, p.average_rating
FROM users AS u
JOIN reservations AS r ON r.guest_id = u.id
JOIN (
SELECT p.id, p.title, p.cost_per_night, AVG(pr.rating) AS average_rating
FROM properties AS p
JOIN property_reviews AS pr ON pr.property_id = p.id
GROUP BY p.id, p.title, p.cost_per_night
) AS p ON r.property_id = p.id
WHERE u.id = 1
AND r.end_date < NOW()::date
ORDER BY r.start_date ASC;
 */

SELECT properties.*, reservations.*, avg(rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;
