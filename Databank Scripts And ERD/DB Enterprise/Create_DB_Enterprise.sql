-- ******************************
-- DROP Tables
-- ******************************
DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS projects CASCADE;
DROP TABLE IF EXISTS locations CASCADE;
DROP TABLE IF EXISTS tasks CASCADE;
DROP TABLE IF EXISTS family_members CASCADE;

-- ******************************
-- CREATE Tables
-- ******************************
CREATE TABLE departments (
    department_id              numeric(2)       
		CONSTRAINT pk_departments PRIMARY KEY,
    department_name            varchar(20)    
		CONSTRAINT nn_department_name NOT NULL,
    manager_id         CHAR(9),   
    mgr_start_date     DATE
);  

CREATE TABLE employees (
    employee_id             CHAR(9)         
		CONSTRAINT pk_employees PRIMARY KEY,
    last_name          varchar(25)    
		CONSTRAINT nn_last_name NOT NULL,
    first_name            varchar(25)    
		CONSTRAINT nn_first_name NOT NULL,
    infix       varchar(25),
    street               varchar(50),
    location              varchar(25),
    province           CHAR(2), 
    postal_code            varchar(7),
    birth_date           DATE, 
    salary             numeric(7,2)     
		CONSTRAINT ck_salary CHECK (salary <= 85000),
    parking_spot       numeric(4)       
		CONSTRAINT un_parking_spot UNIQUE,
    gender            CHAR(1),
    department_id     numeric(2)   
		CONSTRAINT fk_emp_department_id REFERENCES departments(department_id),
    manager_id         CHAR(9)
    	CONSTRAINT fk_emp_manager_id REFERENCES employees(employee_id) 
);  

CREATE TABLE projects (
    project_id         numeric(2)           CONSTRAINT pk_projects PRIMARY KEY,
    project_name       varchar(25)        CONSTRAINT nn_project_name NOT NULL,
    location           varchar(25),
    department_id      numeric(2)           CONSTRAINT fk_proj_department_id REFERENCES departments(department_id)
);

CREATE TABLE locations (
    department_id          numeric (2)          CONSTRAINT fk_loc_dep REFERENCES departments(department_id), 
    location          varchar(20),				
    CONSTRAINT pk_locations  PRIMARY KEY (department_id, location)
); 

CREATE TABLE tasks (
    employee_id         CHAR(9)         CONSTRAINT fk_tasks_emp REFERENCES   employees(employee_id),                
    project_id         numeric(2)       CONSTRAINT fk_tasks_proj REFERENCES   projects(project_id), 
    hours            numeric(5,1),    CONSTRAINT pk_tasks PRIMARY KEY (employee_id, project_id)
); 

CREATE TABLE family_members (
    employee_id         CHAR(9)         
		CONSTRAINT fk_fam_emp REFERENCES employees(employee_id), 
    name            varchar(50),
    gender        CHAR(1)         
		CONSTRAINT c_gender CHECK (gender IN('M', 'F'))
    	CONSTRAINT nn_gender NOT NULL,
    birth_date       DATE 		
		CONSTRAINT nn_birth_date NOT NULL
		CONSTRAINT c_birth_date 
        	CHECK (birth_date 
				   BETWEEN to_date ('20-03-1950', 'DD-MM-YYYY') 
				   	   AND to_date ('01-01-2022', 'DD-MM-YYYY')),
    relationship       varchar(10)      
		CONSTRAINT nn_relationship NOT NULL,
    CONSTRAINT pk_family_members PRIMARY KEY (employee_id, name)
);

ALTER TABLE departments
ADD CONSTRAINT fk_dep_emp FOREIGN KEY (manager_id) REFERENCES employees(employee_id) ;

SELECT COUNT(*) FROM departments;
SELECT COUNT(*) FROM employees;
SELECT COUNT(*) FROM projects;
SELECT COUNT(*) FROM locations;
SELECT COUNT(*) FROM tasks;
SELECT COUNT(*) FROM family_members;


