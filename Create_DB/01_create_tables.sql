USE my_database;

DROP TABLE IF EXISTS my_table;

CREATE TABLE my_table(
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    salary DECIMAL(8, 2),
    department VARCHAR(100)
);

