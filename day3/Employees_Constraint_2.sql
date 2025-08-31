create table Teacher
(
    eid number(5),
    name varchar(15) not null,
    salary number(7, 2),
    dept_name varchar(5),
    constraint d3_ha2_pk primary key(eid),
    constraint d3_ha2_chk check(dept_name = UPPER(dept_name)),
    constraint d3_ha2_fk foreign key(eid) references Employees(mgr_no)
);

desc Teacher;
select * from Teacher;

insert into Teacher values
(
    &eid,
    '&name',
    &salary,
    '&dept_name'
);

commit;