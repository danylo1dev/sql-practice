SELECT * from sales;

SELECT * FROM sales
WHERE customer_name > 'Company A';

SELECT * FROM sales
WHERE (is_disputed IS TRUE) AND (volume > 5000);

SELECT * FROM sales
ORDER BY volume DESC
LIMIT 5
OFFSET 3;

SELECT * FROM sales
WHERE EXTRACT(DAY FROM date_fulfilled - date_created) <= 5;

SELECT DISTINCT customer_name FROM sales
ORDER BY customer_name;

SELECT customer_name, product_name
FROM base_result;