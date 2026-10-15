CREATE DATABASE sales;
USE sales;
SELECT DISTINCT sales_channel AS channel_name
FROM vrinda_sales
WHERE sales_channel LIKE 'Ama%'
LIMIT 5;

/*question 2 */
SELECT DISTINCT category AS product_category
FROM vrinda_products
WHERE category LIKE 'kurta%' LIMIT 10;

/*question 3*/

SELECT   order_id, sale_id, sales_channel, amount
FROM vrinda_sales
WHERE order_status='Delivered'
AND sales_channel LIKE 'a%'
ORDER BY amount DESC LIMIT 10;

/*question 4*/
SELECT DISTINCT ship_state AS city_name FROM vrinda_sales
WHERE order_status ='Delivered'
AND ship_state  LIKE '%PRADESH%'
ORDER BY ship_state DESC LIMIT 10;

/*question 5*/
SELECT order_id, sales_channel, amount 
FROM vrinda_sales
WHERE sales_channel LIKE 'M%' AND amount BETWEEN 500 AND 2000
ORDER BY amount DESC LIMIT 10;
