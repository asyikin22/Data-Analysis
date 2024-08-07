-- SHOW TABLES;
-- DROP TABLE my_table;
-- SHOW TABLES;

-- CREATE TABLE my_table (
-- 	id INT AUTO_INCREMENT PRIMARY KEY,
--     my_column VARCHAR(255) NOT NULL
--     );

-- INSERT INTO my_table (my_column) VALUES
-- ('A'),
-- ('B'),
-- ('A'), 
-- ('C'),
-- ('B'),
-- ('D');

-- select *
-- from my_table;

SELECT my_column, COUNT(*) AS count
FROM my_table
GROUP by my_column
HAVING COUNT(*) > 1;