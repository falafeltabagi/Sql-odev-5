-- TABLOLAR

CREATE TABLE film (
    film_id INT,
    title VARCHAR(255),
    length INT
);

INSERT INTO film VALUES
(1, 'Dragon', 120),
(2, 'Titan', 110),
(3, 'Marion', 125),
(4, 'Alien', 100),
(5, 'Moon', 115),
(6, 'Button', 130),
(7, 'Raven', 90),
(8, 'Canyon', 85),
(9, 'Falcon', 95),
(10, 'Python', 105),
(11, 'King', 98),
(12, 'Iron', 123);

CREATE TABLE customer (
    customer_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    store_id INT
);

INSERT INTO customer VALUES
(1, 'John', 'Anderson', 1),
(2, 'Mary', 'Zimmer', 1),
(3, 'Alice', 'White', 2),
(4, 'Bob', 'Brown', 1),
(5, 'Eve', 'Taylor', 1),
(6, 'Mike', 'Clark', 1),
(7, 'Judy', 'Adams', 2);

-- SORU 1: 'n' ile biten en uzun 5 film
SELECT * FROM film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;

-- SORU 2: 'n' ile biten en kısa filmler (6-10)
SELECT * FROM film
WHERE title LIKE '%n'
ORDER BY length ASC
OFFSET 5 LIMIT 5;

-- SORU 3: store_id = 1 ve soyadına göre azalan sıralama, ilk 4 kişi
SELECT * FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;
