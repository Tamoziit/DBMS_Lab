--1--
create table EMPP
(
    id number(5) primary key,
    EName varchar(20),
    Dept_id varchar(5)
);

insert into EMPP values
(
    &id,
    '&EName',
    '&Dept_id'
);

select * from EMPP;

alter table EMPP modify(EName varchar(25));
desc EMPP;

alter table EMPP add(comm number(5, 2));

rename EMPP to EMP_old;

desc EMP_old;
select * from EMP_old;

drop table EMP_old;


--2--
create table emp_day4 as select empid, name, salary from Employees;

select * from emp_day4;

update emp_day4 set salary = salary + 10000 where salary < 90000;

alter table emp_day4 add(job_id number(5));
update emp_day4 set job_id = &job_id where empid = &empid;

delete from emp_day4 where salary > 90000;

commit;