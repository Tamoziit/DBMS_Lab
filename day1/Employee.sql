/* Day 1 */
create table emp_151
(
    emp_id number(5),
    emp_name varchar(15),
    hire_date date,
    dept_id number(3),
    salary number(7, 2),
    commission number (5, 2)
);

desc emp_151;

select * from emp_151;

insert into emp_151 values
(
    &emp_id,
    '&emp_name',
    '&hire_date',
    &dept_id,
    &salary,
    &commission
);

select emp_id, emp_name, dept_id, hire_date as STARTDATE from emp_151;

select distinct dept_id from emp_151;

select emp_name || ', ' || dept_id "Employee and Title" from emp_151;

select emp_id, emp_name, salary * 12 as Annual_Salary from emp_151;

commit;