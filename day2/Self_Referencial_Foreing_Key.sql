./* DAY 3 HOME ASSIGNMENT: 1*/
create table Employees
(
    empid      NUMBER(5),
    name       VARCHAR(30),
    salary     NUMBER(10,2),
    address    VARCHAR(100),
    hire_date  DATE,
    mgr_no     NUMBER(5),
    dept_name  VARCHAR(30),
    constraint ha3_1_pk primary key(empid),
    constraint ha3_1_fk foreign key(mgr_no) references Employees(empid)
);

desc Employees;
select * from Employees;

insert into Employees values (1, 'Alice', 80000, 'Delhi', DATE '2020-01-15', NULL, 'HR');
insert into Employees values (2, 'Bob', 50000, 'Mumbai', DATE '2021-03-10', 1, 'HR');
insert into Employees values (4, 'David', 45000, 'Pune', DATE '2023-02-01', 2, 'IT');

/* Violations */
insert into Employees values (5, 'Eve', 40000, 'Chennai', DATE '2024-01-01', 99, 'Finance');
insert into Employees values (2, 'Frank', 47000, 'Kolkata', DATE '2024-05-10', 1, 'Finance');
delete from Employees where empid = 2;

commit;