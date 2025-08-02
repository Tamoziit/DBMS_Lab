create table Students
(
    roll number(5),
    Sname varchar(15),
    dob date,
    phn number(10),
    marks number(5, 2)
);

select * from Students;

desc Students;

insert into Students values
(
    151,
    'Tamojit',
    '26-MAY-2004',
    7439010664,
    95.50
);

insert into Students values
(
    &roll,
    '&Sname',
    '&dob',
    &phn,
    &marks
);

select roll, Sname from Students;

insert into Students(roll, SName, phn, dob, marks) values
(
    23451,
    'Virat',
    9874891354,
    '26-APR-2011',
    56.75
);

insert into Students(roll, SName, phn, dob, marks) values
(
    &roll,
    '&Sname',
    &phn,
    '&dob',
    &marks
);

commit;