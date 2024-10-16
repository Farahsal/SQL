SELECT p.name 
FROM patients p 
WHERE YEAR(p.admission_date) = 2022;


SELECT * FROM patients 
WHERE address LIKE '%Sofia%';
SELECT DISTINCT name, address 
FROM patients 
WHERE address LIKE '%Sofia%';
SELECT DISTINCT p.name
FROM patients p
WHERE p.address LIKE '%Plovdiv%';
SELECT DISTINCT p.name, p.address, p.admission_date
FROM patients p
WHERE p.address LIKE '%Plovdiv%';
SELECT DISTINCT p.name, p.address 
FROM patients p 
WHERE p.address LIKE '%Samokov%';
SELECT * 
FROM patients 
WHERE gender = 'Female' AND YEAR(admission_date) = 2022;
SELECT DISTINCT p.name, p.gender, p.admission_date
FROM patients p
WHERE p.gender = 'Female' AND YEAR(p.admission_date) = 2022;
SELECT DISTINCT a.id AS appointment_id, p.name AS patient_name, a.appointment_date
FROM appointments a
JOIN patients p ON a.patient_id = p.id
WHERE YEAR(a.appointment_date) = 2023;
SELECT DISTINCT p.id, p.name, p.address
FROM patients p
WHERE p.age > 45;
SELECT DISTINCT p.name, p.age, p.address
FROM patients p
WHERE p.age > 49;
SELECT DISTINCT p.name, p.age, p.gender, a.appointment_date
FROM patients p
JOIN appointments a ON p.id = a.patient_id
WHERE TIME(a.appointment_date) > '13:00:00';
SELECT DISTINCT p.name, p.age, a.appointment_date
FROM patients p
JOIN appointments a ON p.id = a.patient_id
WHERE YEAR(a.appointment_date) = 2023;
SELECT room_number, capacity, price
FROM hospital_rooms
WHERE department_id = (SELECT id FROM departments WHERE name = 'Pediatrics');
SELECT room_number, capacity, price
FROM hospital_rooms
WHERE department_id = (SELECT id FROM departments WHERE name = 'Psychiatry');
SELECT DISTINCT room_number, capacity, price
FROM hospital_rooms
JOIN departments ON hospital_rooms.department_id = departments.id
WHERE departments.name = 'Psychiatry';
SELECT DISTINCT name, position 
FROM employees 
WHERE position = 'Dermatologist';
SELECT DISTINCT appointments.patient_id, patients.name, appointments.appointment_date
FROM appointments
JOIN patients ON appointments.patient_id = patients.id
WHERE appointments.appointment_date > '2023-08-01';

INSERT INTO patients (name, age, gender, address, admission_date)
VALUES ('Mila Popova', 45, 'Female', 'ul. Mladost 30, Sofia', '2023-05-01');
SELECT * FROM patients WHERE name = 'Mila Popova';
DELETE FROM patients WHERE name = 'Mila Popova';
SELECT * FROM patients WHERE name = 'Mila Popova';
SELECT DISTINCT YEAR(a.appointment_date) AS appointment_year, p.name AS patient_name, a.appointment_date
FROM appointments a
JOIN patients p ON a.patient_id = p.id
JOIN (
  SELECT YEAR(appointment_date) AS year, COUNT(*) AS num_appointments
  FROM appointments
  GROUP BY YEAR(appointment_date)
  ORDER BY num_appointments DESC
  LIMIT 1
) y ON YEAR(a.appointment_date) = y.year
ORDER BY appointment_year, appointment_date;

SELECT p.name AS patient_name, p.bill_id, p.total_cost, DATEDIFF(p.discharge_date, p.admission_date) AS days_stayed
FROM patient_bills p
ORDER BY p.total_cost DESC, p.admission_date;

SELECT DISTINCT p.name AS name, p.bill_id, p.total_cost, DATEDIFF(p.discharge_date, p.admission_date) AS days_stayed
FROM patient_bills p
ORDER BY p.total_cost DESC, p.admission_date;
SELECT DISTINCT p.patient_name AS patient_name, p.bill_id, p.total_cost, DATEDIFF(p.discharge_date, p.admission_date) AS days_stayed
FROM patient_bills p
ORDER BY p.total_cost DESC, p.admission_date;

SELECT p.name AS patient_name, p.bill_id, p.total_cost
FROM patient_bills p
ORDER BY p.total_cost DESC, p.bill_id;



SELECT p.name AS patient_name, pb.bill_id, pb.total_cost
FROM patient_bills pb
JOIN patients p ON pb.patient_id = p.id
ORDER BY pb.total_cost DESC, pb.bill_id
LIMIT 0, 1000;

SELECT 
    p.name AS patient_name,
    pb.total_cost,
    DATEDIFF(pb.discharge_date, pb.admission_date) AS days_stayed
FROM 
    patient_bills pb
JOIN 
    patients p ON pb.patient_id = p.id
ORDER BY 
    pb.total_cost DESC;
    
    SELECT 
    p.name AS patient_name,
    MAX(pb.total_cost) AS total_cost,
    DATEDIFF(MAX(pb.discharge_date), MIN(pb.admission_date)) AS days_stayed
FROM 
    patient_bills pb
JOIN 
    patients p ON pb.patient_id = p.id
GROUP BY 
    p.name
ORDER BY 
    total_cost DESC; 
    
    SELECT 
    COUNT(*) AS num_rooms,
    SUM(hr.price) AS total_price,
    SUM(hr.capacity) AS total_capacity
FROM 
    hospital_rooms hr
JOIN 
    departments d ON hr.department_id = d.id
WHERE 
    d.name = 'Pediatrics';
    
    SELECT distinct
    hr.room_number AS room_number,
    hr.price AS room_price,
    hr.capacity AS room_capacity
FROM 
    hospital_rooms hr
JOIN 
    departments d ON hr.department_id = d.id
WHERE 
    d.name = 'Pediatrics';
    
    ALTER TABLE physicians
ADD COLUMN experience_years INT;

UPDATE physicians
SET specialization = 'Cardiology'
WHERE id = 1;
