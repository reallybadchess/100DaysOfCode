-- CHECK general syntax

CREATE
TABLE example(
		ex_id PRIMARY KEY,
		age SMALLINT CHECK (age > 21),
		parent_age SMALLINT CHECK (
		parent_age > age)
);

-------
-- Example

CREATE
TABLE employees(
	empId SERIAL PRIMARY KEY,
	firstName VARCHAR(50) NOT NULL,
	lastName VARCHAR(50) NOT NULL,
	birthDate DATE CHECK (birthDate > '1900-01-01'),
	hireDate DATE CHECK (hireDate > birthDate),
	salary INTEGER CHECK (salary > 0)
	
);
	
-----
-- The following code will throw an error because the bdate is !> 1900
INSERT
INTO employees(
	firstName, 
	lastName, 
	birthDate, 
	hireDate, 
	salary)
VALUES
('Jose', 'Portilla', '1899-11-03', '2010-01-01', 100);

--------
--This fixes the error
INSERT
INTO employees(
	firstName, 
	lastName, 
	birthDate, 
	hireDate, 
	salary)
VALUES
('Jose', 'Portilla', '1990-11-03', '2010-01-01', 100);

-- Adding a second employee
INSERT
INTO employees(
	firstName, 
	lastName, 
	birthDate, 
	hireDate, 
	salary)
VALUES
('Lays', 'Potatochip', '1932-01-01', '1932-01-02', 2);

SELECT * 
FROM employees;
