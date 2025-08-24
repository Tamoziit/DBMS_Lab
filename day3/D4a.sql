create table EMPP
(
    Id number(5),
    EName varchar(20),
    Dept_id varchar(5),
    constraint d4_1a_pk primary key(Id)
);

desc EMPP;
select * from EMPP;

insert into EMPP values
(
    &Id,
    '&Ename',
    &Dept_id
);

alter table EMPP modify(EName varchar(25));

alter table EMPP add(commission number(5, 2));

rename EMPP to EMP_old;

desc EMP_old;
select * from EMP_old;

drop table EMPP;
drop table EMP_old;

commit;