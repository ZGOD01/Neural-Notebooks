use employees;

DROP table if EXISTS employees;
CREATE TABLE if not EXISTS Employees (
	id serial primary key ,
    first_name varchar(50),
    last_name varchar(50),
    department_id INT,
    hire_date DATE
);
select *  from employees ;

-- Insert values in single row
insert into Employees(id , first_name , last_name , department_id , hire_date)
values (1, 'Om' , 'Gadhave', 1 , '2025-01-21');
select *  from employees ;

-- Insert Multiple values 
insert into Employees(id , first_name , last_name , department_id , hire_date)
	values 
    (2, 'Zgod' , 'Gaming', 2 , '2025-02-21'),
    (3, 'Jonathan' , 'Amaral', 3 , '2025-11-21'),
    (4, 'Rega' , 'Purav', 4 , '2025-04-21');
select *  from employees ;

-- Add Partial Data
insert into Employees(first_name, last_name)
	values
    ('Mortal' , 'Gaming');
select  * from employees;

-- Inserting data in different order
insert into Employees (department_id, hire_date , last_name , first_name)
	values(1 , '2025-03-23' , 'Mizo' , 'Gaming');
select * from employees;

-- Adding current date & default values
DROP table if EXISTS ExampleTable;
CREATE TABLE if not EXISTS ExampleTable (
	id serial primary key ,
    name varchar(50) NOT null,
    hire_date timestamp default current_timestamp,
    status varchar(20) DEFAULT 'Active'
);
select * from ExampleTable;

insert into ExampleTable(name) values ('Om');
select * from ExampleTable ;

insert into ExampleTable(name) values ('Om'),('Kishan'), ('Rutu');
select * from ExampleTable ;