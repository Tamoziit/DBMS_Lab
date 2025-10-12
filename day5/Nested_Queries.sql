select * from Employee;

select avg(salary) from Employee;
update Employee set salary = &salary where emp_id = &emp_id;


/* DAY 7 */
--1--
select emp_id, name from Employee where salary >
    (select avg(salary) from Employee) order by salary;

--2a--
select emp_id, name from Employee where dept_no in
    (select dept_no from Employee where name like '%u%');
--2b--
select emp_id, name, salary from Employee where
    salary >
        (select avg(salary) from Employee) 
    and dept_no in
        (select dept_no from Employee where name like '%u%');
        
--6--
select name, salary from Employee where salary =
    (select min(salary) from
        (select distinct salary from Employee order by salary desc)
    where rownum < 5);