-- Database: cwmbd_project / projekt-cyber

-- DROP DATABASE cwmbd_project;
/*
CREATE DATABASE cwmbd_project
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Polish_Poland.1250'
    LC_CTYPE = 'Polish_Poland.1250'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
*/

CREATE TABLE patients(
	patient_id SERIAL PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	address VARCHAR,
	birth_place VARCHAR,
	pesel VARCHAR UNIQUE,
	phone_number VARCHAR,
	notes VARCHAR);
--ALTER TABLE patients
--ALTER COLUMN address TYPE VARCHAR(100)
CREATE TABLE drugs(
	drug_id SERIAL PRIMARY KEY,
	drug_name VARCHAR(20));


CREATE TABLE disease_codes(
	disease_id SERIAL PRIMARY KEY,
	dicease_code VARCHAR(5) UNIQUE,
	disease_name VARCHAR(100));
--ALTER TABLE disease_codes
--ALTER COLUMN disease_name TYPE VARCHAR(100)
CREATE TABLE doctors(
	doctor_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	prof_lic_number VARCHAR(7) UNIQUE,
	medical_spec VARCHAR(20));
--ALTER TABLE doctors ADD UNIQUE (prof_lic_number)
CREATE TABLE visits(
	visit_id SERIAL PRIMARY KEY,
	patient_id SERIAL REFERENCES patients,
	doctor_id SERIAL REFERENCES doctors,
	visit_notes VARCHAR(200),
	recommendations VARCHAR(200),
	visit_date DATE);

CREATE TABLE prescriptions(
	prescription_id SERIAL PRIMARY KEY,
	visit_id SERIAL REFERENCES visits,
	drug_id SERIAL REFERENCES drugs,
	dose VARCHAR(20));

CREATE TABLE diagnosis(
	diagnosis_id SERIAL PRIMARY KEY,
	visit_id SERIAL REFERENCES visits,
	disease_id SERIAL REFERENCES disease_codes);

