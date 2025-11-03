create or replace trigger audit_trigger
before delete or update on client_master
for each row
begin
    if updating then
        insert into auditclient values
        (
            :OLD.client_no,
            :OLD.name,
            :OLD.balance,
            'UPDATE',
            user,
            sysdate
        );

    elsif deleting then
        insert into auditclient values
        (
            :OLD.client_no,
            :OLD.name,
            :OLD.balance,
            'DELETE',
            user,
            sysdate
        );

    end if;

end;