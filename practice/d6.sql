select * from Employ;
select * from Depart;
select * from Employees;

desc Employ;
desc Depart;

alter table Employ add (comm number(5, 2));

update Employ set comm = &comm where empid = &empid;

alter table Employ add (job varchar(5));

update Employ set job = '&job' where empid = &empid;

--1--
select e.name, d.dept_name from Employ e, Depart d where e.dept_no = d.dept_id and e.name like '%a%';

select e.name, d.dept_name, d.location_name from Employ e, Depart d where e.dept_no = d.dept_id and comm is not NULL;

--2--
select e1.empid as emp#, e1.name as employee, e2.empid as mgr#, e2.name as manager from Employees e1, Employees e2
    where e1.mgr_no = e2.empid;
    
select e1.empid as emp#, e1.name as employee, e2.empid as mgr#, e2.name as manager from Employees e1
    left outer join Employees e2 on(e1.mgr_no = e2.empid)
    order by emp#;
    
--3--
select e1.name, e1.dept_no, e2.name as Colleagues from Employ e1, Employ e2
    where e1.dept_no = e2.dept_no
    and e1.name <> e2.name;
    
select name, hire_date from Employees
    where hire_date >
        (select hire_date from Employees where name = 'Rem');
        
select e1.name, e1.hire_date from Employees e1 join Employees e2 on e2.name = 'Rem'
     where e1.hire_date > e2.hire_date;

--4--
select e1.name as Employee, e1.hire_date as Emp_hire, e2.name as manager, e2.hire_date as manager_hire
    from Employees e1, Employees e2
    where e1.mgr_no = e2.empid
    and e1.hire_date < e2.hire_date;
    

--HA--
--1--
select e.name, e.dept_no, d.dept_name from Employ e, Depart d where e.dept_no = d.dept_id;
select e.name, e.dept_no, d.dept_name from Employ e left outer join Depart d on e.dept_no = d.dept_id;
select e.name, e.dept_no, d.dept_name from Employ e right outer join Depart d on e.dept_no = d.dept_id;
select e.name, e.dept_no, d.dept_name from Employ e full outer join Depart d on e.dept_no = d.dept_id;

--2--
select distinct e.job from Employ e join Depart d on e.dept_no = d.dept_id
    where dept_id = 1;
    
select e.name, e.job, e.dept_no, d.dept_name from Employ e join Depart d on e.dept_no = d.dept_id
    where d.location_name = 'L2';
