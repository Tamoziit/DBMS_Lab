create or replace trigger trg_delete_student
before delete on student
for each row
begin
    delete from course where studentid = :OLD.sid;

end;