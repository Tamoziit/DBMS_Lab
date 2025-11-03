declare
    total_sum number(10);

begin
    insert into Emp_pl values('E006', 'David', 3000);

    update Emp_pl set sal = sal + 2000 where Emp_name = 'Blake';
    update Emp_pl set sal = sal + 1500 where Emp_name = 'Clark';

    select sum(sal) into total_sum from Emp_pl;

    dbms_output.put_line('Total Salary = ' || total_sum);

    if total_sum > 20000 then
        rollback;
        dbms_output.put_line('Sum exceeded. Changes Rolled back');
    else
        commit;
        dbms_output.put_line('Changes committed');
    end if;

end;