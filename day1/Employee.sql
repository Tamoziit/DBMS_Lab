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


/* Day 2 */
select emp_id, emp_name from emp_151 where emp_name like '%a%' and emp_name like '%e%';

select emp_name, dept_id from emp_151 where commission is null;

select emp_name as Employee, salary as Monthly_Salary from emp_151 where salary between 25000 and 42000 and (dept_id = 109 or dept_id = 118);

select emp_id, emp_name from emp_151 where emp_name like 'J%' or emp_name like 'A%' or emp_name like 'M%' order by emp_name;

select emp_id, emp_name, dept_id, salary + nvl(commission, 0) as Total_Salary from emp_151;

commit;