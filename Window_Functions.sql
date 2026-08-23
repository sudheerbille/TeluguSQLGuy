Sample Data: employees Table

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees VALUES
(101, 'Anil',   'IT', 90000),  -- Highest in IT (Unique)
(102, 'Bhavna', 'IT', 80000),  -- Tie 1 for 2nd place in IT
(103, 'Charan', 'IT', 80000),  -- Tie 2 for 2nd place in IT
(104, 'Divya',  'IT', 70000),  -- Follows the tie
(105, 'Eswar',  'HR', 60000),  -- Top in HR (Unique)
(106, 'Farooq', 'HR', 50000),  -- Tie 1 for 2nd place in HR
(107, 'Gita',   'HR', 50000),  -- Tie 2 for 2nd place in HR
(108, 'Hari',   'HR', 50000),  -- Tie 3 for 2nd place in HR
(109, 'Indu',   'HR', 40000);  -- Follows a 3-way tie

-- SQL Query to Demonstrate the Differences
SELECT 
    department,
    emp_name,
    salary,
    ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS row_num,
    RANK()       OVER (PARTITION BY department ORDER BY salary DESC) AS rnk,
    DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dense_rnk
FROM employees;
