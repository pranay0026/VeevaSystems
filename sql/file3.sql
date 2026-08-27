CREATE TABLE drugs(
    drug_id INT PRIMARY KEY,
    drug_name VARCHAR(50),
    description VARCHAR(100)
);

CREATE TABLE trails(
    trail_id INT PRIMARY KEY,
    trail_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    drug_id INT,
    FOREIGN KEY(drug_id) REFERENCES drugs(drug_id)
);

CREATE TABLE phases(
    trail_id INT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY(trail_id) REFERENCES trails(trail_id)
);
INSERT INTO drugs VALUES
(101,'Remdesivir','Antiviral drug'),
(102,'Pembrolizumab','Cancer immunotherapy drug'),
(103,'Metformin','Diabetes medication'),
(104,'Atorvastatin','Cholesterol-lowering drug'),
(105,'Amoxicillin','Antibiotic');
INSERT INTO trails VALUES
(1,'COVID-19 Treatment Trial','2023-01-10','2024-06-30',101),
(2,'Lung Cancer Trial','2022-03-15','2025-01-20',102),
(3,'Diabetes Control Trial','2023-05-01','2024-12-15',103),
(4,'Cholesterol Study','2022-08-20','2024-02-28',104),
(5,'Bacterial Infection Trial','2024-01-05','2025-03-10',105);
INSERT INTO phases VALUES
(1,'2023-01-10','2023-06-30'),
(1,'2023-07-01','2023-12-31'),
(1,'2024-01-01','2024-06-30'),

(2,'2022-03-15','2022-09-30'),
(2,'2022-10-01','2023-06-30'),
(2,'2023-07-01','2025-01-20'),

(3,'2023-05-01','2023-09-30'),
(3,'2023-10-01','2024-05-31'),
(3,'2024-06-01','2024-12-15'),

(4,'2022-08-20','2023-01-31'),
(4,'2023-02-01','2023-08-31'),
(4,'2023-09-01','2024-02-28'),

(5,'2024-01-05','2024-06-30'),
(5,'2024-07-01','2024-12-31'),
(5,'2025-01-01','2025-03-10');

select t.trail_name, d.drug_name,p.start_date,p.end_date
from trails t inner join drugs d on t.drug_id=d.drug_id
inner join phases p on t.trail_id=p.trail_id;




















