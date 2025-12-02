# ETL Run Log – Instacart Project

This log documents all major ETL steps taken in transforming and loading the Instacart dataset.

---

## ▶ Run 1 — Initial Load to PostgreSQL
**Date:** 2025-12-01  
**Database:** instacart  
**Schema:** instacart  
**Source:** Kaggle Instacart Dataset

### ✔ Cleaning (Performed in Notebooks)
- Verified PK uniqueness on departments, aisles, products, orders.
- Combined `order_products__prior` + `order_products__train` into one clean table.
- Removed no data except expected NULL for `days_since_prior_order` on first orders.
- Ensured correct dtypes:
  - INTEGER columns: ids, order_number, etc.
  - SMALLINT: `order_dow`, `order_hour_of_day`, `add_to_cart_order`, `reordered`
  - TEXT: product names, aisle names, department names

### ✔ Loading (Performed using script)
Loaded into PostgreSQL:
- instacart.departments  
- instacart.aisles  
- instacart.products  
- instacart.orders  
- instacart.order_products  

### ✔ Row counts after load
(Replace X/Y/Z after you run the queries)

- departments: X  
- aisles: Y  
- products: Z  
- orders: N  
- order_products: M  

### ✔ Notes
- `days_since_prior_order` NULL = first order → expected.
- Dataset extremely clean → minimal transformations needed.
- Next step: Analytics SQL and/or dbt staging.
