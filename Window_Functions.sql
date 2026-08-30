Sample Data: employees Table

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept VARCHAR(50),
    salary INT
);

INSERT INTO EMPLOYEES (EMP_ID, NAME, SALARY, DEPT) VALUES
(101, 'ANIL', 90000, 'IT'),
(110, 'SUDHEER', 90000, 'IT'),
(106, 'INDU', 85000, 'HR'),
(102, 'BHAVANA', 80000, 'IT'),
(107, 'CHARAN', 80000, 'IT'),
(108, 'DIVYA', 70000, 'IT'),
(103, 'ESWAR', 50000, 'HR'),
(104, 'FAROOQ', 50000, 'HR'),
(105, 'HARI', 50000, 'HR'),
(109, 'GITA', 40000, 'HR');

-- SQL Query to Demonstrate the Differences

-- Without Partition by 
SELECT 
    *,
    ROW_NUMBER() OVER ( ORDER BY salary DESC) AS row_num,
    RANK()       OVER ( ORDER BY salary DESC) AS rnk,
    DENSE_RANK() OVER ( ORDER BY salary DESC) AS dense_rnk
FROM employees;

--With Partition by 
SELECT 
    *,
    ROW_NUMBER() OVER (PARTITION BY dept ORDER BY salary DESC) AS row_num,
    RANK()       OVER (PARTITION BY dept ORDER BY salary DESC) AS rnk,
    DENSE_RANK() OVER (PARTITION BY dept ORDER BY salary DESC) AS dense_rnk
FROM employees;
