Multi-Clinic Case Study Datasets

This folder contains synthetic datasets to support batch + streaming ingestion,
Delta Lake transformations, and loading into Snowflake/Synapse for the healthcare domain.

Files

dim_clinics.csv — 20 rows
dim_doctors.csv — 500 rows
dim_patients.csv — 15,000 rows (patient demographics with masked PII fields)
fact_visits.csv — 100,000 rows (patient visits across clinics, with diagnosis codes, doctor ID, visit date)
fact_prescriptions.csv — 80,000 rows (medicines prescribed per visit, quantity, cost)
fact_labresults.csv — 60,000 rows (lab test results, abnormal values injected for anomaly detection)
payments.csv — 100,000 rows (insurance vs. cash payments, billing anomalies for fraud detection)
stream_events.ndjson — 5,000 events (IoT vitals: BP, HR, glucose, plus appointment events)
warehouse_schema.sql — DDL for Fact/Dim tables
error_injection_samples.csv — Sample bad records (nulls, schema drift, invalid datatypes)
to test pipeline robustness

cost_estimation_queries.sql — Example queries to simulate reporting workload and estimate
Snowflake credits/Azure infra costs

Notes

Currency in INR, dates between 2025-01-01 and 2025-08-31.
NDJSON can be used to simulate Event Hub ingestion (each line is a JSON event).
Patient dataset includes PII fields that must be masked in curated zone and BI layer.
IoT data simulates near real-time patient vitals from home monitoring devices.
Lab results contain occasional injected anomalies (e.g., extremely high glucose) for anomaly detection exercises.
Error injection dataset allows testing ADF/Databricks pipeline error handling + monitoring alerts.
Cost estimation queries simulate different workloads (light reporting vs. heavy aggregation)
to demonstrate Snowflake query optimization and cost control.