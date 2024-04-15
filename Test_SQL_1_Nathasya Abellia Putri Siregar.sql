--- 15-04-2024 19:47:02
--- SQLite
CREATE TABLE employee_table (
    employee TEXT NOT NULL,
    salary INTEGER
);

INSERT INTO employee_table (employee, salary) VALUES
('Abdul', 100),
('Budi', 200),
('Charlie', 100),
('Dimas', 500);

--- 15-04-2024 19:47:30
--- SQLite
SELECT DISTINCT salary
FROM employee_table
ORDER BY salary DESC
LIMIT 2, 1;

