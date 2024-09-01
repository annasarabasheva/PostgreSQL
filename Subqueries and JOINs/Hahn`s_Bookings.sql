SELECT
 	count(*)
FROM bookings
JOIN customers USING (customer_id)
WHERE customers.last_name = 'Hahn';