create table Customers
(
    cid number(5),
    cname varchar(15),
    city varchar(15),
    country varchar(15),
    constraint d6_pk primary key(cid)
);

insert into Customers values
(
    &cid,
    '&cname',
    '&city',
    '&country'
);

select * from Customers;

select count(*) as No_of_Customers, country from Customers group by country having count(*) > 5;

select country, count(cid) from Customers where
    country <> 'USA'
    group by country
    having count(cid) >= 4
    order by count(cid);
    
commit;