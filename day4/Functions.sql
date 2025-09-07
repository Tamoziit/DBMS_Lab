/* DAY 5 */
create table Employees2
(
    empid      NUMBER(5),
    name       VARCHAR(30),
    salary     NUMBER(10,2),
    address    VARCHAR(100),
    hire_date  DATE,
    mgr_no     NUMBER(5),
    dept_name  VARCHAR(30),
    constraint d5_pk primary key(empid),
    constraint d5_fk foreign key(mgr_no) references Employees2(empid)
);

desc Employees2;
select * from Employees2;

insert into Employees2 values (1, 'Alice', 80000, 'Delhi', DATE '2020-01-15', NULL, 'HR');
insert into Employees2 values (2, 'Bob', 50000, 'Mumbai', DATE '2021-03-10', 1, 'HR');
insert into Employees2 values (4, 'David', 45000, 'Pune', DATE '2023-02-01', 2, 'IT');
insert into Employees2 values (3, 'Beckham', 45000, 'Pune', DATE '2023-02-01', 4, 'IT');
insert into Employees2 values (5, 'Messi', 95000, 'Kolkata', DATE '2023-07-11', 2, 'CSE');
insert into Employees2 values (6, 'Ronaldo', 93000, 'Mumbai', DATE '2023-05-12', NULL, 'MECH');

select dept_name, count(*) as Frequency from Employees2 group by dept_name;

select count(distinct mgr_no) as No_of_Managers from Employees2;

select min(salary) as Minimum_Salary, max(salary) as Maximum_Salary, max(salary) - min(salary) as Difference from Employees2;

select mgr_no, min(salary) as Min_Salary from Employees2 where mgr_no is not NULL group by mgr_no order by Min_Salary desc;

select round(max(salary)) as Maximum, round(min(salary)) as Mininmum, round(sum(salary)) as Sum, round(avg(salary)) as Average from Employees2;

select dept_name, round(max(salary)) as Maximum, round(min(salary)) as Mininmum, round(sum(salary)) as Sum, round(avg(salary)) as Average from Employees2 group by dept_name;

select emp_name, nvl(commission, 0) as commission from emp_151;

select rpad(emp_name, 20, '*') as Name, (salary + nvl(commission, 0)) as Total_Monthly_Salary from emp_151 order by Total_Monthly_Salary desc;

commit;