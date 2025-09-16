POS Case Study Datasets
=======================

This folder contains synthetic datasets to support batch + streaming ingestion, 
Delta Lake transformations, and loading into Snowflake/Synapse.

Files
-----
- dim_stores.csv              — 12 rows
- dim_products.csv             — 250 rows
- dim_customers.csv            — 6000 rows
- fact_orders_daily_batch.csv  — 30000 rows across 139 days
- payments.csv                 — 30000 rows
- inventory_snapshot_daily.csv — 134400 rows
- stream_events.ndjson         — 2160 events (order_created + inventory_update)
- warehouse_schema.sql         — DDL for Fact/Dim tables
- error_injection_samples.csv  — Sample bad records (nulls, wrong schema, invalid datatypes) 
                                 for debugging/error handling practice
- cost_estimation_queries.sql  — Sample queries to simulate reporting workload and help 
                                 calculate Snowflake credit usage & Azure infra costs

Notes
-----
- Currency in INR, dates between 2025-04-01 and 2025-08-18.
- NDJSON can be used to simulate Event Hub ingestion (each line is a JSON event).
- Orders contain occasional injected anomalies (large quantities) for fraud detection exercises.
- Customer dataset includes PII fields that must be masked in curated zone and BI layer.
- Error injection dataset allows testing ADF/Databricks pipeline error handling + monitoring alerts.
- Cost estimation queries simulate different workloads (light reporting vs. heavy aggregation) 
  to demonstrate Snowflake query optimization and cost control.
