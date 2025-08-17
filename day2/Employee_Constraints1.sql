/* DAY 3: 3 */
create table emp_new
(
    name varchar(15),
    age number(3),
    dept_name varchar(15),
    loc varchar(15),
    constraint chk_name check(name like 'S%'),
    constraint chk_dept check(dept_name = UPPER(dept_name)),
    constraint chk_loc check(loc = LOWER(loc)),
    constraint chk_age check(age > 18)
);

desc emp_new;
select * from emp_new;

insert into emp_new values
(
    '&name',
    &age,
    '&dept_name',
    '&loc'
);

DROP TABLE emp_new;

commit;