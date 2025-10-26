declare
    id Accounts.account_id%type;
    amt Accounts.balance%type;

begin
    id := '&id';
    select balance into amt from Accounts
        where account_id = id;

    if (amt - 2000) > 500 then
        update Accounts set balance = balance - 2000
            where account_id = id;
    else
        dbms_output.put_line('Deduction Not possible: ' || amt);
    end if;
    
end;