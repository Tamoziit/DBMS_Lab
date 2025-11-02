create table emp
(
    emp_id number(5),
    emp_name varchar(15),
    hire_date date,
    dept_id number(5),
    salary number(7, 2),
    comm number(5, 2)
);

desc emp;
select * from emp;

insert into emp values
(
    &emp_id,
    '&emp_name',
    '&hire_date',
    &dept_id,
    &salary,
    &comm
);

select emp_id, emp_name, dept_id, hire_date as STARTDATE from emp;

select distinct dept_id from emp;

select emp_name || ', ' || dept_id "Employee and Title" from emp;

select emp_id, emp_name, salary * 12 as Annual_Salary from emp;