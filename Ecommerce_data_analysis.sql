SELECT * FROM Ecommerce_Delivery_Analytics_New;

SELECT COUNT(*) AS total_orders
FROM Ecommerce_Delivery_Analytics_New;

SELECT "Platform", COUNT(*) AS total_orders
FROM Ecommerce_Delivery_Analytics_New
GROUP BY "Platform"
ORDER BY total_orders DESC;

SELECT "Platform", ROUND(AVG("Delivery Time (Minutes)"),2) AS avg_delivery_time
FROM Ecommerce_Delivery_Analytics_New
GROUP BY "Platform"
ORDER BY avg_delivery_time;

SELECT "Product Category", COUNT(*) AS total_orders
FROM Ecommerce_Delivery_Analytics_New
GROUP BY "Product Category"
ORDER BY total_orders DESC;

SELECT "Product Category", ROUND(AVG("Order Value (INR)"),2) AS avg_order_value
FROM Ecommerce_Delivery_Analytics_New
GROUP BY "Product Category"
ORDER BY avg_order_value DESC;

SELECT "Platform", SUM("Order Value (INR)") AS total_revenue
FROM Ecommerce_Delivery_Analytics_New
GROUP BY "Platform"
ORDER BY total_revenue DESC;

SELECT "Delivery Delay", COUNT(*) AS order_count
FROM Ecommerce_Delivery_Analytics_New
GROUP BY "Delivery Delay";

SELECT "Platform",
       ROUND(100.0 * SUM(CASE WHEN "Delivery Delay"='Yes' THEN 1 ELSE 0 END) / COUNT(*),2) AS delay_percentage
FROM Ecommerce_Delivery_Analytics_New
GROUP BY "Platform"
ORDER BY delay_percentage DESC;

SELECT "Platform", ROUND(AVG("Service Rating"),2) AS avg_rating
FROM Ecommerce_Delivery_Analytics_New
GROUP BY "Platform"
ORDER BY avg_rating DESC;

SELECT "Refund Requested", COUNT(*) AS total
FROM Ecommerce_Delivery_Analytics_New
GROUP BY "Refund Requested";

SELECT "Product Category",
       ROUND(100.0 * SUM(CASE WHEN "Refund Requested"='Yes' THEN 1 ELSE 0 END) / COUNT(*),2) AS refund_rate
FROM Ecommerce_Delivery_Analytics_New
GROUP BY "Product Category"
ORDER BY refund_rate DESC;

SELECT "Customer ID", SUM("Order Value (INR)") AS total_spent
FROM Ecommerce_Delivery_Analytics_New
GROUP BY "Customer ID"
ORDER BY total_spent DESC
LIMIT 10;

SELECT "Delivery Delay", ROUND(AVG("Service Rating"),2) AS avg_rating
FROM Ecommerce_Delivery_Analytics_New
GROUP BY "Delivery Delay";

