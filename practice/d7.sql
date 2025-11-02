--1--
select empid, name, salary from Employees
    where salary >
        (select avg(salary) from Employees)
    order by salary;
    
--2--
select empid, name from Employ
    where dept_no in
        (select dept_no from Employ
            where name like '%h%');
            
select empid, name from Employ
    where dept_no in
        (select dept_no from Employ
            where name like '%h%')
    and salary >
        (select avg(salary) from Employ);
        
--3--
select e.name, e.dept_no, d.dept_name from Employ e join Depart d on e.dept_no = d.dept_id
    where d.location_name = 'L1';
    
--alt
select name, dept_no,
    (select dept_name from Depart d where d.dept_id = e.dept_no) as dept_name
from Employ e
    where dept_no in
        (select dept_id from Depart where location_name = 'L1');
        
--4--
select name, salary from Employees
    where mgr_no =
        (select empid from Employees where name = 'Rem');
        
--5--
select e.dept_no, e.name,
    (select d.location_name from Depart d where d.dept_id = e.dept_no) as Location
from Employ e
    where e.dept_no =
        (select dept_id from Depart where dept_name = 'D3');
        
--alt--
select e.dept_no, e.name, d.location_name from Employ e, Depart d
    where e.dept_no = d.dept_id
    and d.dept_name = 'D3';
    
--6--
select name, salary from Employees2
    where salary =
        (select min(salary) from
            (select distinct salary from Employees2 order by salary desc)
        where rownum < 5);
        
        
--HA--
--1--
SELECT 
    d.dept_name,
    x.avg_salary
FROM 
    depart d
JOIN 
    (
        SELECT dept_no, AVG(salary) AS avg_salary
        FROM employ
        GROUP BY dept_no
    ) x
ON 
    d.dept_id = x.dept_no
WHERE 
    x.avg_salary = (
        SELECT MIN(AVG(salary))
        FROM employ
        GROUP BY dept_no
    );

--alt
WITH dept_avg AS (
    SELECT 
        dept_no,
        AVG(salary) AS avg_salary
    FROM 
        employ
    GROUP BY 
        dept_no
)
SELECT 
    d.dept_name,
    da.avg_salary
FROM 
    dept_avg da
JOIN 
    depart d
ON 
    da.dept_no = d.dept_id
WHERE 
    da.avg_salary = (
        SELECT MIN(avg_salary)
        FROM dept_avg
    );

--2--
select name, salary from Employ
    where salary >
        any(select salary from Employ
                where dept_no = 3);
                
--3--
select name, salary from Employ
    where salary >
        all(select salary from Employ
                where dept_no = 1);