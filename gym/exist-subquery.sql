SELECT o.id
FROM orders AS o
WHERE EXISTS(
    SELECT c.email
    FROM customers as c
    WHERE o.customer_id = c.id AND c.email = 'max@test.com'
);