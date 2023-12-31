CREATE TABLE departments (
	dept_no VARCHAR(50) PRIMARY KEY,
	dept_name VARCHAR(50)
);

CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT
);

CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(50),
	birth_date DATE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex VARCHAR(50),
	hire_date DATE,
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR(50),
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(50),
	emp_no INT,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
	title_id VARCHAR(50) PRIMARY KEY,
	titles VARCHAR
	--FOREIGN KEY (title_id) REFERENCES employees(emp_title_id)
);