-- Drops the employeetracker_db if it exists currently --
DROP DATABASE IF EXISTS employeetracker_db;
-- Creates the "employeetracker_db" database --
CREATE DATABASE employeetracker_db;

-- Makes it so all of the following code will affect employeetracker_db --
USE employeetracker_db;


-- Table for "department"
CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT, 
    dept_name VARCHAR (30) NOT NULL,
    PRIMARY KEY (id)
);

-- Table for "roles"
CREATE TABLE roles (
	id INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(30) NULL,
	salary DECIMAL,
	dept_id INT NOT NULL,
	PRIMARY KEY (id)
);

-- Table for "employees"
CREATE TABLE employees (
    id INT NOT NULL AUTO_INCREMENT, 
    first_name VARCHAR (30) NOT NULL, 
    last_name VARCHAR (30) NOT NULL, 
    role_id INT NULL, 
    manager_id INT, 
    PRIMARY KEY (id)
)
