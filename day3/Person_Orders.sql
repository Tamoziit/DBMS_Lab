create table Person
(
    person_id number(5),
    first_name varchar(15),
    last_name varchar(10),
    phone number(10),
    constraint d3_2a_pk primary key(person_id),
    constraint d3_2a_un unique(phone)
);

desc Person;
select * from Person;

create table Orders
(
    order_id number(5),
    order_date date,
    p_id number(5),
    constraint d3_2b_pk primary key(order_id),
    constraint d3_2b_fk foreign key(p_id) references Person(person_id)
);

desc Orders;
select * from Orders;

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

delete from Person where person_id = 11;
delete from Person where person_id = 12;

commit;