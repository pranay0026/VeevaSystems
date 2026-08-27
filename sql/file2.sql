
CREATE TABLE product_reviews (
    review_id INT PRIMARY KEY,
    user_id INT,
    submit_date DATE,
    pro_id INT,
    stars INT
);
INSERT INTO product_reviews (review_id, user_id, submit_date, pro_id, stars)
VALUES
(1, 101, '2024-01-10', 201, 5),
(2, 102, '2024-01-12', 201, 4),
(3, 103, '2024-01-15', 202, 3),
(4, 101, '2024-02-05', 202, 5),
(5, 104, '2024-02-10', 203, 2),
(6, 105, '2024-02-15', 201, 5),
(7, 102, '2024-03-01', 203, 4),
(8, 106, '2024-03-05', 202, 4),
(9, 107, '2024-03-10', 203, 5),
(10, 108, '2024-03-15', 201, 3),
(11, 103, '2024-04-01', 202, 5),
(12, 109, '2024-04-05', 203, 4);

select pro_id, avg(stars) from product_reviews group by pro_id;
