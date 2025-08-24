create table emp_day4 as select emp_id, name, salary from Employee;

desc emp_day4;
select * from emp_day4;

update emp_day4 set salary = salary + 1000 where salary < 50000;

alter table emp_day4 add(job_id number(5));
update emp_day4 set job_id = &job_id where emp_id = &emp_id;

alter table emp_day4 modify(name varchar(25));

delete from emp_day4 where salary > 10000;

rename emp_day4 to emp_d4;

commit;