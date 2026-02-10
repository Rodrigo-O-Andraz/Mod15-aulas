USE my_database;

-- Query to select all records from my_table
SELECT id, name, age, salary, department FROM my_table;

-- Count the number of records in my_table
SELECT COUNT(*) AS records_count FROM my_table;

-- Insert sample data into my_table
INSERT INTO my_table (name  , age, salary, department) VALUES
('Alice', 30, 60000.00, 'HR'),
('Bob', 25, 50000.00, 'IT'),
('Charlie', 28, 55000.00, 'Finance'),
('Diana', 32, 70000.00, 'Marketing'),
('Ethan', 29, 52000.00, 'IT'),
('Fiona', 27, 48000.00, 'HR'),
('George', 35, 80000.00, 'Finance'),
('Hannah', 31, 65000.00, 'Marketing'),
('Ian', 26, 51000.00, 'IT'),
('Jane', 33, 72000.00, 'HR');

INSERT INTO my_table (name, age, salary, department) VALUES
('Kevin', 28, 58000.00, 'Finance'),
('Liam', 30, 61000.00, 'IT'),
('Mia', 29, 59000.00, 'HR'),
('Noah', 34, 75000.00, 'Finance'),
('Olivia', 28, 54000.00, 'Marketing'),
('Piper', 31, 67000.00, 'IT'),
('Quinn', 27, 49000.00, 'Finance'),
('Ryan', 32, 68000.00, 'HR'),
('Sophia', 26, 52000.00, 'Marketing'),
('Tyler', 35, 78000.00, 'IT');

INSERT INTO my_table (name, age, salary, department) VALUES
('Aiden', 30, 62000.00, 'IT'),
('Bella', 29, 60000.00, 'HR'),
('Carter', 34, 74000.00, 'Finance'),
('Daisy', 28, 55000.00, 'Marketing'),
('Eli', 31, 68000.00, 'IT'),
('Faith', 27, 50000.00, 'Finance'),
('Gavin', 32, 69000.00, 'HR'),
('Holly', 26, 53000.00, 'Marketing'),
('Isaac', 35, 79000.00, 'IT'),
('Jasmine', 30, 64000.00, 'Finance');

INSERT INTO my_table (name, age, salary, department) VALUES
('Uma', 30, 63000.00, 'Finance'),
('Victor', 29, 57000.00, 'HR'),
('Wendy', 33, 71000.00, 'Marketing'),
('Xavier', 28, 56000.00, 'IT'),
('Yara', 31, 66000.00, 'Finance'),
('Zara', 27, 50000.00, 'HR'),
('Kaden', 29, 58000.00, 'HR'),
('Luna', 33, 72000.00, 'Marketing'),
('Mason', 28, 57000.00, 'IT'),
('Nora', 31, 66000.00, 'Finance');

INSERT INTO my_table (name, age, salary, department) VALUES
('Owen', 27, 51000.00, 'HR'),
('Peyton', 34, 76000.00, 'Marketing'),
('Quincy', 30, 65000.00, 'IT'),
('Riley', 29, 59000.00, 'Finance'),
('Samantha', 28, 54000.00, 'HR'),
('Tyson', 31, 67000.00, 'Marketing'),
('Ulysses', 26, 52000.00, 'IT'),
('Violet', 35, 80000.00, 'Finance'),
('Wyatt', 30, 63000.00, 'HR'),
('Xena', 29, 60000.00, 'Marketing');

INSERT INTO my_table (name, age, salary, department) VALUES
('Yosef', 34, 75000.00, 'IT'),
('Zoe', 28, 55000.00, 'Finance');

-- 1. Contar o número total de colaboradores da empresa com alias total_employees.
SELECT COUNT(*) AS total_employees FROM my_table;

-- 2. Somar os salarios de todos os colaboradores com o alias total_salaries
SELECT SUM(salary) AS total_salaries FROM my_table;

-- 3. Calcular a média idade dos colaboradores com o alias average_age
SELECT AVG(age) AS average_age FROM my_table;

-- 4. Calcular a média dos salários dos colaboradores com o alias average_salary
SELECT AVG(salary) AS average_salary FROM my_table;

-- 5. Calcular o salário máximo com o alias max_salary
SELECT MAX(salary) AS max_salary FROM my_table;

-- 5a. Calcular o salário máximo com o alias min_salary
SELECT MIN(salary) AS min_salary FROM my_table;

-- 5b. Encontrar o nome da pessoa com o salário maximo
SELECT name, salary FROM my_table
    WHERE salary = (SELECT MAX(salary) FROM my_table);

-- 6. Encontrar os colaboradores com idade maior que 30 anos
SELECT name, age 
    FROM my_table
    WHERE age > 30;

-- 6a. Encontrar os coloaboradores com idade entre 25 e 30 anos
SELECT name, age
    FROM my_table
    WHERE age >= 25 AND age <= 30;

SELECT name, age
    FROM my_table
    WHERE age BETWEEN 25 AND 30; 

-- 6b. Encontrar os colaboradores com idades menores que 25 e maiores que 30 anos
SELECT name, age
    FROM my_table
    WHERE age < 25 AND age > 30

SELECT name, age
    FROM my_table
    WHERE NOT age >= 25 OR NOT age <= 30;

SELECT name, age
    FROM my_table
    WHERE NOT BETWEEN 25 AND 30;

-- 7. Encontrar os colaboradores do departamento de 'IT'
SELECT name, department
    FROM my_table
    WHERE department = 'IT';

SELECT name, department
    FROM my_table
    WHERE department LIKE '%IT%';

-- 8. Contar numero de funcionarios por departamento
SELECT department, COUNT(*) 
    AS employee_count 
    FROM my_table 
    GROUP BY department; 

-- 9. Idade média por departamento, apenas para colaboradores com salário maior que 50000
SELECT department, AVG(age) 
    AS average_age 
    FROM my_table 
    WHERE salary > 50000 
    GROUP BY department;

-- 10. Salário por departamento MAX, MIN, AVG
-- e a diferença entre o salário máximo e mínimo
SELECT department, 
    MAX(salary) AS max_salary, 
    MIN(salary) AS min_salary, 
    AVG(salary) AS average_salary, 
    (MAX(salary) - MIN(salary)) AS salary_range
    FROM my_table
    GROUP BY department;

-- 11. Estatisticas salariais por departamento
-- para funcionarios com idade entre 25 e 45 anos
-- Departamento, nº de colaboradores, salário médio, salário máximo
-- total de custo com salários por departamento
SELECT department,
    COUNT(*) AS employee_count, 
    AVG(salary) AS average_salary, 
    MAX(salary) AS max_salary, 
    SUM(salary) AS total_salary_cost
    FROM my_table
    WHERE age BETWEEN 25 AND 45
    GROUP BY department;

