CREATE TABLE employees (
    id SERIAL PRIMARY KEY, -- Using SERIAL for auto-incrementing primary key
    name VARCHAR(100),
    dept VARCHAR(100),
    salary INTEGER
);

-- Insert data into the employees table
INSERT INTO employees (id, name, dept, salary) VALUES
(1, 'Alexander', 'Admin', 6500),
(2, 'Leo', 'Finance', 7000),
(3, 'Robin', 'IT', 2000),
(4, 'Ali', 'IT', 4000),
(5, 'Maria', 'IT', 6000),
(6, 'Alice', 'Admin', 5000),
(7, 'Sebastian', 'HR', 3000),
(8, 'Emma', 'Finance', 4000),
(9, 'John', 'HR', 4500),
(10, 'Kabir', 'IT', 8000);

SELECT * FROM employees

-- adding columns for lowest and highest salary
SELECT *, 
MIN(salary) OVER (PARTITION BY dept) AS Lowest_salary,
MAX(salary) OVER (PARTITION BY dept) AS Highest_salary
FROM employees