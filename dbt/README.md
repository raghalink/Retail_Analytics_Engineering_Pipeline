# dbt Project Overview

This folder contains the dbt transformation layer for the **Retail Analytics Engineering Pipeline**.  
All SQL logic validated in PostgreSQL is modeled here using a structured **staging → intermediate → marts** approach.

---

## 📁 Structure

dbt/
├── models/
│ ├── staging/
│ ├── intermediate/
│ └── mart/
├── dbt_project.yml
└── sources.yml


---

## 🧱 Staging Models (`stg_*`)

The staging layer standardizes raw warehouse tables:

- `stg_aisles.sql`
- `stg_departments.sql`
- `stg_orders.sql`
- `stg_order_products.sql`
- `stg_products.sql`

**Purpose:**
- Clean datatypes  
- Rename columns  
- Remove inconsistencies  
- Prepare raw data for modeling  

---

## 🔄 Intermediate Models (`int_*`)

Business logic built on top of staging:

- `int_order_basket_sizes.sql`

**Purpose:**
- Join staging tables  
- Create order-line and basket-level grains  
- Reduce complexity before marts  

---

## 📊 Mart Models (`fct_*`, `agg_*`)

Final analytics-ready models consumed by Power BI (DirectQuery):

- `agg_orders_by_dow.sql`  
- `agg_product_metrics.sql`  
- `fct_orders_by_dow.sql`  
- `fct_kpi_overview.sql`  

**Purpose:**
- High-level KPIs  
- Aggregations for dashboards  
- Clean, BI-ready tables  

---

## 🗺️ Lineage Graph (DAG)

![dbt lineage graph](images/dbt_graph.png)

---

## ✅ Summary

This dbt project demonstrates:

- Clean separation of staging, intermediate, and mart layers  
- Consistent naming conventions  
- Maintainable SQL modeling  
- A realistic analytics engineering workflow  


