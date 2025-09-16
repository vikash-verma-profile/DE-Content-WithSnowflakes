-- Example reporting queries for Snowflake/Synapse cost estimation

-- Patient volume by clinic
SELECT clinic_id, COUNT(DISTINCT patient_id) AS patient_count
FROM fact_visits
GROUP BY clinic_id;

-- Revenue by specialization
SELECT d.specialization, SUM(p.amount_inr) AS total_revenue
FROM fact_visits v
JOIN payments p ON v.visit_id = p.visit_id
JOIN dim_doctors d ON v.doctor_id = d.doctor_id
GROUP BY d.specialization;

-- Readmission trends
SELECT patient_id, COUNT(*) AS visit_count
FROM fact_visits
GROUP BY patient_id
HAVING COUNT(*) > 3;
