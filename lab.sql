--     Create a table called person that records a person's id, name, age, height ( in cm ), city, favorite_color.
--         id should be an auto-incrementing id/primary key - Use type: SERIAL
-- CREATE TABLE person(
-- 	person_id SERIAL PRIMARY KEY,
-- 	name VARCHAR(50),
--   age INT,
--   height_cm INT,
--   city VARCHAR(50),
--   favorite_color VARCHAR(20)
-- );
--     Add 5 different people into the person database.
--         Remember to not include the person_id because it should auto-increment.
-- INSERT INTO person
-- (name, favorite_color, city, height_cm, age)
-- VALUES
-- ('Bob', 'blue', 'Chicago', 180, 24),
-- ('Burt', 'other blue', 'Chicago', 190, 25),
-- ('Bart', 'blue no. 2', 'Chicago', 181, 26),
-- ('Bort', 'imbluedabadeedabadie', 'Chicago', 191, 25),
-- ('Kevin', 'blue', 'Chicago', 7, 23);
--     List all the people in the person table by height from tallest to shortest.
-- SELECT * FROM person
-- ORDER BY height_cm DESC;
-- --     List all the people in the person table by height from shortest to tallest.
-- SELECT * FROM person
-- ORDER BY height_cm ASC;
-- --     List all the people in the person table by age from oldest to youngest.
-- SELECT * FROM person
-- ORDER BY age DESC;
--     List all the people in the person table older than age 20.
-- SELECT * FROM person
-- WHERE age > 20;
-- --     List all the people in the person table that are exactly 18.
-- SELECT * FROM person
-- WHERE age = 18;
-- --     List all the people in the person table that are less than 20 and older than 30.
-- SELECT * FROM person 
-- WHERE age < 20 AND age > 30;
-- --     List all the people in the person table that are not 27 (Use not equals).
-- SELECT * FROM person
-- WHERE age != 27;
--     List all the people in the person table where their favorite color is not red.
-- SELECT * FROM person
-- WHERE favorite_color !='red';
-- --     List all the people in the person table where their favorite color is not red and is not blue.
-- SELECT * FROM person
-- WHERE favorite_color NOT IN('red', 'blue');
-- --     List all the people in the person table where their favorite color is orange or green.
-- SELECT * FROM person
-- WHERE favorite_color='orange' OR favorite_color='green';
--     List all the people in the person table where their favorite color is orange, green or blue (use IN).
-- SELECT * FROM person
-- WHERE favorite_color IN('orange', 'green', 'blue');
-- --     List all the people in the person table where their favorite color is yellow or purple (use IN).
-- SELECT * FROM person
-- WHERE favorite_color IN('yellow', 'purple');








--     Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
-- CREATE TABLE orders(
-- 	order_id SERIAL PRIMARY KEY,
--   person_id INT,
--   product_name VARCHAR(50),
--   product_price DECIMAL,
--   quantity INT
-- );
-- --     Add 5 orders to the orders table.
--         Make orders for at least two different people.
--         person_id should be different for different people.
-- INSERT INTO orders
-- (person_id, product_name, product_price, quantity)
-- VALUES
-- (0, 'beans', 1000, 30),
-- (1, 'corn', 1000.01, 30),
-- (2, 'cabbage', 500, 21),
-- (3, 'hamburger', 20.49, 5),
-- (4, 'xylophone', 83, 1);
--     Select all the records from the orders table.
-- SELECT * FROM orders;
-- --     Calculate the total number of products ordered.
-- SELECT SUM(quantity) FROM orders;
--     Calculate the total order price.
-- SELECT SUM(product_price) FROM orders;
-- --     Calculate the total order price by a single person_id.
-- SELECT SUM(product_price) FROM orders
-- WHERE person_id=0;








--     Add 3 new artists to the artist table. ( It's already created )
-- INSERT INTO artist
-- (name)
-- VALUES
-- ('Kendrick Lamar'),
-- ('Danny Brown'),
-- ('Carly Rae Jepsen');
--     Select 10 artists in reverse alphabetical order.
-- SELECT * FROM artist
-- ORDER BY name DESC
-- LIMIT 10;
-- --     Select 5 artists in alphabetical order.
-- SELECT * FROM artist
-- ORDER BY name ASC
-- LIMIT 5;
-- --     Select all artists that start with the word 'Black'.
-- SELECT * FROM artist
-- WHERE name LIKE('Black%');
-- --     Select all artists that contain the word 'Black'.
-- SELECT * FROM artist
-- WHERE name LIKE('%Black%')







--     List all employee first and last names only that live in Calgary.
-- SELECT first_name, last_name FROM employee
-- WHERE city = 'Calgary';
--     Find the birthdate for the youngest employee.
-- SELECT birth_date FROM employee
-- ORDER BY birth_date DESC
-- LIMIT 1;
-- --     Find the birthdate for the oldest employee.
-- SELECT birth_date FROM employee
-- ORDER BY birth_date ASC
-- LIMIT 1;
--     Find everyone that reports to Nancy Edwards (Use the ReportsTo column).
--         You will need to query the employee table to find the Id for Nancy Edwards
-- SELECT * FROM employee
-- WHERE first_name = 'Nancy';-- 2
-- SELECT * FROM employee
-- WHERE reports_to = 2;
--     Count how many people live in Lethbridge.
-- SELECT COUNT(city) FROM employee
-- WHERE city = 'Lethbridge';






--     Count how many orders were made from the USA.
-- SELECT COUNT(invoice_id) FROM invoice
-- WHERE billing_country='USA';
-- --     Find the largest order total amount.
-- SELECT total FROM invoice
-- ORDER BY total DESC
-- LIMIT 1;
-- --     Find the smallest order total amount.
-- SELECT total FROM invoice
-- ORDER BY total ASC
-- LIMIT 1;
-- --     Find all orders bigger than $5.
-- SELECT * FROM invoice
-- WHERE total > 5;
--     Count how many orders were smaller than $5.
-- SELECT COUNT(invoice_id) FROM invoice
-- WHERE total < 5;
-- --     Count how many orders were in CA, TX, or AZ (use IN).
-- SELECT COUNT (invoice_id) from invoice
-- WHERE billing_state IN('CA','TX','AZ');
--     Get the average total of the orders.
-- SELECT AVG(total) FROM invoice;
-- --     Get the total sum of the orders.
-- SELECT SUM(total) FROM invoice;