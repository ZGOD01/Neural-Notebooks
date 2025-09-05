-- Primary Key 
	-- A primary key is a unique identifier for each record in a table. It cannot contain NULL values and must contain unique values.
DROP Table if EXISTS Employees;
CREATE TABLE if not exists Employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50));
Select * from Employees; 

-- Composite Key
	-- A composite key consists of two or more columns that together uniquely identify a record.
DROP Table if EXISTS Orders;
CREATE TABLE Orders (
    order_id SERIAL,
    customer_id INT,
    order_date DATE,
    PRIMARY KEY (order_id, customer_id));
Select * from Orders; 
DROP Table if EXISTS Orders;

-- Foreign Key
	-- A foreign key is a column (or a set of columns) that establishes a link between the data in two tables.
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Employees (employee_id));
Select * from Orders; 

-- Unique Constrains
	-- A unique constraint ensures that all values in a column are distinct.
DROP Table if EXISTS Employees;
CREATE TABLE if not exists Employees (
    employee_id SERIAL PRIMARY KEY,
    email VARCHAR(50) UNIQUE,
    name VARCHAR(50),
    department VARCHAR(50));
Select * from Employees; 

-- Unique Constrains as Composite Key
	-- A composite unique constraint ensures that the combination of values in two or more columns is unique across all records.
DROP Table if EXISTS Employees;
CREATE TABLE if not exists Employees (
    employee_id SERIAL PRIMARY KEY,
    email VARCHAR(50) UNIQUE,
    phone INT UNIQUE,
    name VARCHAR(50),
    department VARCHAR(50),
    UNIQUE (email,phone));
Select * from Employees; 

-- Check Constraint
	-- A check constraint enforces a condition on the values in a column. If a record violates the condition, it is not allowed to be added to the table.
DROP Table if EXISTS Employees;
CREATE TABLE if not exists Employees (
    employee_id SERIAL PRIMARY KEY,
    email VARCHAR(50) UNIQUE,
    age INT CHECK (age >= 18),
    phone INT UNIQUE,
    name VARCHAR(50),
    department VARCHAR(50),
    UNIQUE (email,phone));
Select * from Employees; 

