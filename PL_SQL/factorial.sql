declare
    n Factorial.num%type;
    f Factorial.fact%type;

begin
    n := &n;
    f := 1;
    for i in 2..n
    loop
        f := f * i;
    end loop;

    insert into Factorial values(n, f);
    
end;