--1--
create table Depart
(
    dept_id number(5),
    dept_name varchar(15),
    location_name varchar(15),
    constraint pk_1a_d3 primary key(dept_id),
    constraint un_1a_d3 unique(dept_name)
);

create table Employ
(
    empid number(5),
    name varchar(15),
    salary number(7, 2) not NULL,
    hire_date date,
    dept_no number(5),
    constraint pk_1b_d3 primary key(empid),
    constraint fk_1b_d3 foreign key(dept_no) references Depart(dept_id)
);

insert into Depart values
(
    &dept_id,
    '&dept_name',
    '&location_name'
);

insert into Employ values
(
    &empid,
    '&name',
    &salary,
    '&hire_date',
    &dept_no
);

select * from Depart;
select * from Employ;

delete from Depart where dept_id = 2;
delete from Employ where dept_no = 2;


--2--
create table Person
(
    person_id number(5),
    first_name varchar(15),
    last_name varchar(15),
    phone number(10),
    constraint pk_2a_d3 primary key(person_id)
);

create table Orders
(
    order_id number(5),
    order_date date,
    p_id number(5),
    constraint pk_2b_d3 primary key(order_id),
    constraint fk_2b_d3 foreign key(p_id) references Person(person_id)
);

insert into Person values
(
    &person_id,
    '&first_name',
    '&last_name',
    &phone
);

insert into Orders values
(
    &order_id,
    '&order_date',
    &p_id
);

select * from Person;
select * from Orders;

delete from Person where person_id = 1;

alter table Person add constraint un_2b_d3 unique(phone);


--3--
create table emp_new
(
    name varchar(15),
    age number(3),
    dept_name varchar(15),
    loc varchar(15),
    constraint chk1_name_d3 check(name like 'S%'),
    constraint chk2_dept_d3 check(dept_name = UPPER(dept_name)),
    constraint chk3_loc_d3 check(loc = LOWER(loc)),
    constraint chk3_age_d3 check(age > 18)
);

insert into emp_new values
(
    '&name',
    &age,
    '&dept_name',
    '&loc'
);

select * from emp_new;


--HA--
--1--
create table Employees
(
    empid number(5),
    name varchar(15),
    salary number(7, 2),
    address varchar(15),
    hire_date date,
    mgr_no number(5),
    dept_name varchar(15),
    constraint pk_1_ha3 primary key(empid),
    constraint fk_1_ha3 foreign key(mgr_no) references Employees(empid)
);

insert into Employees values
(
    &empid,
    '&name',
    &salary,
    '&address',
    '&hire_date',
    &mgr_no,
    '&dept_name'
);

select * from Employees;

alter table Employees add constraint un_1_ha3 unique(mgr_no);

--2--
create table Teacher
(
    eid number(5),
    name varchar(15) not NULL,
    salary number(7, 2),
    dept_name varchar(15),
    constraint pk_2_ha3 primary key(eid),
    constraint chk_2_ha3 check(dept_name = UPPER(dept_name)),
    constraint fk_2_ha3 foreign key(eid) references Employees(mgr_no)
);

insert into Teacher values
(
    &eid,
    '&name',
    &salary,
    '&dept_name'
);

delete from Employees where mgr_no = 1;

commit;