CREATE TABLE dim_clinics (
    clinic_id INT,
    clinic_name STRING,
    city STRING,
    specialization STRING
);

CREATE TABLE dim_doctors (
    doctor_id INT,
    doctor_name STRING,
    specialization STRING,
    clinic_id INT
);

CREATE TABLE dim_patients (
    patient_id INT,
    first_name STRING,
    last_name STRING,
    dob DATE,
    email STRING,
    phone STRING
);

CREATE TABLE fact_visits (
    visit_id INT,
    patient_id INT,
    doctor_id INT,
    clinic_id INT,
    visit_date DATE,
    diagnosis STRING
);

CREATE TABLE fact_prescriptions (
    prescription_id INT,
    visit_id INT,
    medicine_name STRING,
    quantity INT,
    cost_inr FLOAT
);

CREATE TABLE fact_labresults (
    labresult_id INT,
    visit_id INT,
    test_type STRING,
    result_value FLOAT,
    result_flag STRING
);

CREATE TABLE payments (
    payment_id INT,
    visit_id INT,
    payment_type STRING,
    amount_inr FLOAT,
    status STRING
);