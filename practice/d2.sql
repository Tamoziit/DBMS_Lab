select emp_id, emp_name from emp where emp_name like '%a%' and emp_name like '%e%';
select emp_id, emp_name from emp where emp_name like '%a%' or emp_name like '%e%';

select emp_name, dept_id from emp where comm is NULL;

select emp_name, salary from emp where salary between 70000 and 90000 and (dept_id = 1 or dept_id = 2);

select emp_name from emp where emp_name like 'J%' or emp_name like 'A%' or emp_name like 'M%' order by emp_name;

select emp_name, salary + nvl(comm, 0) as Total_Salary from emp;

select distinct dept_id from emp;

select * from emp where to_char(hire_date, 'YYYY') = '2021';

select emp_id, emp_name, round(months_between(sysdate, hire_date)) as Experience_in_months from emp;
select emp_id, emp_name, round(months_between(sysdate, hire_date) / 12) as Experience_in_years from emp;
select emp_id, emp_name, round(months_between(sysdate, hire_date) * 30) as Experience_in_days from emp;

select * from emp order by salary desc;

select * from emp where hire_date < '01-01-2012';

select * from emp where hire_date between '28-09-2020' and '03-12-2022';

--HA
select emp_id, emp_name, salary, (salary + 0.15 * salary) as New_Salary from emp;

select emp_id, emp_name, salary, (salary + 0.15 * salary) as New_Salary, 0.15 * salary as Incremented_Salary from emp;

select emp_name || ' earns ' || salary || ' monthly but wants ' || (3 * salary) as Dream_Salary from emp;

select emp_id, emp_name, salary, round(salary + 0.15 * salary) as New_Salary from emp;

select emp_name, salary + nvl(comm, 0) as Total_Monthly_Salary from emp where emp_name like 'A%';