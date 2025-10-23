sql
  


plsql
  begin
    update emp set salary = salary + 100;
    if sql%notfound then 
        dbms_output.put_line('empty');
    ELSE
        dbms_output.put_line(sql%rowcount||' is total number of rows');
    end if;
end;
