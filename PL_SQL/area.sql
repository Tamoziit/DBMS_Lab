declare
    r number(2);
    ar number(5, 2);
    pi constant number(5, 2) := 3.14;

begin
    r := 3;
    while r <= 7
    loop
        ar := 3.14 * r * r;
        insert into areas values(r, ar);
        r := r + 1;
    end loop;
end;