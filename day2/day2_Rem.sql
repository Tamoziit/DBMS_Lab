select * from emp_151;

select distinct dept_id from emp_151;

select * from emp_151 where to_char(hire_date, 'YYYY') = '2005';

select emp_id, emp_name, round(months_between(sysdate, hire_date)) as experience from emp_151;

select * from emp_151 order by salary desc;

select * from emp_151 where hire_date < '01-01-2012';

select * from emp_151 where hire_date between '28-09-2007' and '03-12-2022';