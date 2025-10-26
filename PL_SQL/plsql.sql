create table areas
(
    radius number(2),
    area number(5, 2)
);

@area.sql
select * from areas;

create table Factorial
(
    num number(5),
    fact number(10)
);

@factorial.sql
select * from Factorial;

create table Accounts
(
    account_id varchar(10),
    name varchar(10),
    balance number(5)
);

insert into Accounts values
(
    '&account_id',
    '&name',
    &balance
);

set serveroutput on;

@accounts.sql
select * from Accounts;

commit;