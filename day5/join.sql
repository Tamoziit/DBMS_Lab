select * from Employee;
select * from Depart;
select * from Employees;

insert into Employee values (
    &emp_id,
    '&name',
    &salary,
    '&hire_date',
    &dept_no,
    &comm
);

alter table Employee add (comm number(5, 2));

update Employee set comm = &comm where emp_id = &emp_id;

update Employees set hire_date = '&hire_date' where empid = &empid;

delete from Employee where emp_id in (1, 2, 3);


/* DAY 6 */
--1a--
select e.name, d.dept_name from Employee e, Depart d where e.dept_no = d.dept_id and e.name like '%a%';
--1b--
select e.name, d.dept_name, d.location_name from Employee e, Depart d where e.dept_no = d.dept_id and e.comm is NOT NULL;

--2a--
select e1.empid as emp#, e1.name as employee, e1.mgr_no as mgr#, e2.name as manager from Employees e1, Employees e2 where e1.mgr_no = e2.empid;
--2b--
select e1.empid as emp#, e1.name as employee, e1.mgr_no as mgr#, e2.name as manager from Employees e1 left outer join Employees e2 on(e1.mgr_no = e2.empid) order by emp#;

--3a--
select e1.name, e1.dept_no, e2.name as Colleagues from Employee e1, Employee e2 where e1.dept_no = e2.dept_no and e1.name <> e2.name;
--3b--
select e1.name, e1.hire_date from Employee e1 join Employee e2 on e2.name = 'David;' where e1.hire_date > e2.hire_date;

--4--
select e1.name, e1.hire_date, e2.name as mgr_name, e2.hire_date as mgr_date from Employees e1, Employees e2 where e1.mgr_no = e2.empid and e1.hire_date < e2.hire_date;

commit;