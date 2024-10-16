INSERT INTO patients (name, age, gender, address, admission_date)
VALUES
('Ivan Ivanov', 45, 'Male', 'ul. Yordanka Filaretova, Sofia', '2023-01-01'),
('Maria Petrova', 28, 'Female', 'ul. Otets Paisiy, Sofia', '2024-02-02'),
('Georgi Georgiev', 35, 'Male', 'ul. Marko Balabanov, Sofia', '2024-03-03'),
('Anna Todorova', 55, 'Female', 'ul. Damyan Gruev, Sofia', '2024-01-04'),
('Petar Petrov', 65, 'Male', 'ul. Dimitar Traykovich, Sofia', '2023-08-05'),
('Elena Ivanova', 32, 'Female', 'ul. Hristo Semerdzhiev, Samokov', '2022-07-06'),
('Kristina Georgieva', 42, 'Female', 'ul. Ivan Dospevski, Samokov', '2022-03-07'),
('Hristo Ivanov', 50, 'Male', 'ul. Hristo Maksimov, Samokov', '2022-06-08'),
('Vanya Ivanova', 22, 'Female', 'ul. Stratsin, Plovdiv', '2022-04-09'),
('Boris Petrov', 38, 'Male', 'ul. Danail Yurukov, Plovdiv', '2022-03-10'),
('Mariana Georgieva', 47, 'Female', 'ul. Stefan Zahariev, Plovdiv', '2024-02-11'),
('Kaloyan Ivanov', 52, 'Male', 'ul. Nish, Plovdiv', '2024-01-12'),
('Svetla Ivanova', 37, 'Female', 'ul. Gogol, Sliven', '2023-10-13'),
('Ivan Petrov', 58, 'Male', 'ul. Sava Filaretov, Sliven', '2023-04-14'),
('Maria Ivanova', 27, 'Female', 'ul. Stefan Sultanov, Sliven', '2022-08-19');
SELECT * FROM patients;
INSERT INTO physicians (name, specialization)
VALUES
  ('Ivan Ivanov', 'Cardiology'),
  ('Anna Petrova', 'Pediatrics'),
  ('Georgi Georgiev', 'Orthopedics'),
  ('Maria Ivanova', 'Gynecology'),
  ('Kristian Petrov', 'Neurology'),
  ('Elitsa Georgieva', 'Psychiatry'),
  ('Boris Ivanov', 'Dermatology'),
  ('Nadezhda Petrova', 'Oncology'),
  ('Petar Georgiev', 'Urology'),
  ('Radostina Ivanova', 'Radiology'),
  ('Kaloyan Petrov', 'Anesthesiology'),
  ('Tsvetelina Georgieva', 'Ophthalmology'),
  ('Hristo Ivanov', 'Gastroenterology'),
  ('Vanya Petrova', 'Pulmonology'),
  ('Todor Georgiev', 'Hematology'),
  ('Stefani Ivanova', 'Endocrinology'),
  ('Veselin Petrov', 'Nephrology');
  SELECT * FROM physicians;
  INSERT INTO appointments (patient_id, physician_id, appointment_date)
VALUES
  (1, 1, '2024-05-03 10:00:00'),
  (2, 2, '2024-03-04 11:30:00'),
  (3, 3, '2024-02-05 09:00:00'),
  (4, 4, '2024-01-06 14:00:00'),
  (5, 5, '2023-04-07 16:00:00'),
  (6, 6, '2022-04-08 10:30:00'),
  (7, 7, '2023-04-09 13:00:00'),
  (8, 8, '2023-08-10 11:00:00'),
  (9, 9, '2023-09-11 09:30:00'),
  (10, 10, '2023-10-12 15:00:00'),
  (11, 11, '2024-02-13 10:00:00'),
  (12, 12, '2022-04-14 14:30:00'),
  (13, 13, '2022-06-15 12:00:00'),
  (14, 14, '2022-07-16 10:00:00'),
  (15, 15, '2023-09-17 13:00:00'),
  (16, 16, '2023-11-18 11:00:00'),
  (17, 17, '2023-12-19 09:30:00'),
  (1, 2, '2024-02-21 10:00:00'),
  (2, 3, '2024-01-22 11:00:00'),
  (3, 4, '2024-05-23 09:30:00');
   SELECT * FROM appointments;
   INSERT INTO departments (name)
VALUES 
('Cardiology'),
('Pediatrics'),
('Orthopedics'),
('Gynecology'),
('Neurology'),
('Psychiatry'),
('Dermatology'),
('Oncology'),
('Urology'),
('Radiology'),
('Anesthesiology'),
('Ophthalmology'),
('Gastroenterology'),
('Pulmonology'),
('Hematology'),
('Endocrinology'),
('Nephrology'),
('Physical Therapy'),
('Laboratory Services');
 SELECT * FROM departments;
 INSERT INTO employees (name, department_id, position)
VALUES
('Ivan Ivanov', 1, 'Cardiologist'),
('Anna Petrova', 2, 'Pediatrician'),
('Georgi Georgiev', 3, 'Orthopedic Surgeon'),
('Maria Ivanova', 4, 'Gynecologist'),
('Kristian Petrov', 5, 'Neurologist'),
('Elitsa Georgieva', 6, 'Psychiatrist'),
('Boris Ivanov', 7, 'Dermatologist'),
('Nadezhda Petrova', 8, 'Oncologist'),
('Petar Georgiev', 9, 'Urologist'),
('Radostina Ivanova', 10, 'Radiologist'),
('Hristo Hristov', 11, 'Pediatrician'),
  ('Vanya Ivanova', 12, 'Hematologist'),
  ('Kaloyan Ivanov', 13, 'Gastroenterologist'),
  ('Svetlina Ivanova', 14, 'Gynecologist'),
  ('George Petrov', 15, 'Neurologist'),
  ('Maria Ivanova', 16, 'Dermatologist'),
  ('Petar Delchev', 17, 'Endocrinologist'),
  ('Georgi Georgiev', 18, 'Gynecologist'),
  ('Yordanka Petrova', 19, 'Dermatologist'),
  ('Maria Borislova', 20, 'Dermatologist');
SELECT * FROM employees;
INSERT INTO hospital_rooms (department_id, room_number, capacity, price)
VALUES
  (1, 101, 2, 200.00),
  (1, 102, 2, 200.00),
  (1, 103, 2, 200.00),
  (2, 201, 4, 300.00),
  (2, 202, 4, 300.00),
  (2, 203, 4, 300.00),
  (3, 301, 6, 400.00),
  (3, 302, 6, 400.00),
  (3, 303, 6, 400.00),
  (4, 401, 2, 250.00),
  (4, 402, 2, 250.00),
  (5, 501, 2, 350.00),
  (5, 502, 2, 350.00),
  (6, 601, 4, 500.00),
  (6, 602, 4, 500.00),
  (7, 701, 2, 400.00),
  (7, 702, 2, 400.00),
  (8, 801, 2, 300.00),
  (8, 802, 2, 300.00),
  (9, 901, 2, 450.00),
  (9, 902, 2, 450.00);
  SELECT * FROM hospital_rooms;
INSERT INTO patient_bills (patient_id, room_id, admission_date, discharge_date, total_cost)
VALUES
  (1, 1, '2023-01-01', '2023-01-05', 500.00),
  (2, 2, '2024-02-02', '2024-02-05', 600.00),
  (3, 3, '2024-03-03', '2024-03-07', 700.00),
  (4, 4, '2024-01-04', '2024-01-08', 800.00),
  (5, 5, '2023-08-05', '2023-08-10', 750.00),
  (6, 6, '2022-07-06', '2022-07-10', 650.00),
  (7, 7, '2022-03-07', '2022-03-10', 600.00),
  (8, 8, '2022-06-08', '2022-06-12', 800.00),
  (9, 9, '2022-04-09', '2022-04-12', 700.00),
  (10, 10, '2022-03-10', '2022-03-14', 800.00),
  (11, 11, '2024-02-11', '2024-02-14', 900.00),
  (12, 12, '2024-01-12', '2024-01-15', 850.00),
  (13, 13, '2023-10-13', '2023-10-17', 600.00),
  (14, 14, '2023-04-14', '2023-04-18', 750.00),
  (15, 15, '2022-08-19', '2022-08-22', 700.00);
  SELECT * FROM patient_bills;
SELECT * FROM employees;

   
  
  