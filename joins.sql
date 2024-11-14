CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);
INSERT INTO Department (dept_id, dept_name) VALUES
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'Engineering'),
(4, 'Marketing');

INSERT INTO Employee (employee_id, employee_name, dept_id) VALUES
(101, 'Alice', 1),
(102, 'Bob', 2),
(103, 'Charlie', 3),
(104, 'David', NULL), -- Employee without a department
(105, 'Eve', 4);

SELECT e.employee_name, d.dept_id 
FROM Employee e 
inner JOIN Department d ON e.dept_id = d.dept_id;
