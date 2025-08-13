CREATE DATABASE abc;
USE abc;

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    age INT,
    experience INT
);

INSERT INTO employees (name, department, salary, age, experience) 
VALUES
('John', 'HR', 45000, 28, 3),
('Alice', 'IT', 70000, 32, 6),
('Bob', 'IT', 65000, 29, 4),
('Eve', 'Finance', 60000, 35, 10),
('Charlie', 'HR', 48000, 30, 5),
('David', 'Finance', 62000, 34, 7),
('Sophia', 'IT', 72000, 31, 5),
('Sam', 'HR', 40000, 26, 2),
('Ravi', 'Finance', 59000, 38, 12),
('Meena', 'IT', 71000, 33, 8),
('charan', 'IT', 65000 , 37,12);

SHOW TABLES;
SELECT * FROM employees;


SELECT * FROM employees
where salary>( SELECT avg(salary) FROM employees);
SELECT max(salary) FROM employees;
select avg(salary) from employees
where department = "IT"
and salary > (select avg (salary) from employees
where department = "HR");

SELECT * FROM employees
where experience = (select max(experience) from employees)
and age = (select MIN(age) from employees where experience = (select max(experience) from employees));

SELECT * FROM employees

where department = (select department from employees 
where name = "Alice");



delete from employees;
SELECT * FROM employees;
delete from employees where id between 11 and 20;

update  employees
set id = 11
where name = "charan";
