/* DAY 3: 1 a, b */
create table Depart
(
    dept_id number(5),
    dept_name varchar(15),
    location_name varchar(15),
    constraints p3_1a primary key(dept_id),
    constraints u3_1a unique(dept_name)
);

desc Depart;

create table Employee
(
    emp_id number(5),
    name varchar(15),
    salary number(7, 2),
    hire_date date,
    dept_no number(5),
    constraints p3_1b primary key(emp_id),
    constraints f3_1b foreign key(dept_no) references Depart(dept_id)
);

desc Employee;

insert into Depart values
(
    &dept_id,
    '&dept_name',
    '&location_name'
);

insert into Employee values
(
    &emp_id,
    '&name',
    &salary,
    '&hire_date',
    &dept_no
);

select * from Depart;
select * from Employee;

delete from Depart where dept_id = 14;
delete from Employee where dept_no = 14;

commit;