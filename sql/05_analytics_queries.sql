-- ===================================================
-- SECTION 1: Sanity & High-Level KPIs
-- ===================================================
-- Q1. Total volume snapshot

-- Total users
SELECT COUNT(DISTINCT orders.user_id)  FROM instacart.orders;

-- Total orders
SELECT COUNT(*) FROM instacart.orders;

-- Total order lines
SELECT COUNT(*) FROM instacart.order_products;

-- Total distinct products
SELECT COUNT(DISTINCT product_id) FROM instacart.products;

-- Q3. Row checks vs expectations

-- How many distinct order_ids in orders vs in order_products?
SELECT 
(SELECT COUNT(*) FROM instacart.orders) AS 
orders_ids_orders,
(SELECT COUNT(DISTINCT order_id) FROM instacart.order_products) AS 
orders_order_products;

-- Do they match as expected?
-- ===================================================
-- SECTION 2: Demand Over Time & Volume
-- ===================================================
-- Q4. Orders by day of week
-- Q5. Orders by hour
-- Q6. Weekly order trend
-- Q7. Active users per period

-- ===================================================
-- SECTION 3: Product & Category Performance
-- ===================================================
-- Q8. Top 20 products
-- Q9. Top departments
-- Q10. Top aisles
-- Q11. Product reorder rates
-- Q12. Department reorder rates

-- ===================================================
-- SECTION 4: Basket & Co-occurrence
-- ===================================================
-- Q13. Average basket size
-- Q14. Basket size by DOW/hour
-- Q15. Product pair co-occurrence

-- ===================================================
-- SECTION 5: User Behavior & Lifecycle
-- ===================================================
-- Q16. Top customers by order count
-- Q17. Time between orders (median per user)
-- Q18. Basket size vs order_number

-- ===================================================
-- SECTION 6: Reorder Dynamics
-- ===================================================
-- Q19. Overall reorder ratio
-- Q20. Next-order inclusion probability for products