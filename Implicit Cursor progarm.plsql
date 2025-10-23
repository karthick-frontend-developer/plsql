#sql
  create table emp(id number(3) primary key, ename varchar2(20), dept varchar2(10),salary number(8));
  insert into emp(id,name,dept,salary) values(100,'dinesh','IT',2000);
#plsql
  begin
    update emp set salary = salary + 100;
    if sql%notfound then 
        dbms_output.put_line('empty');
    ELSE
        dbms_output.put_line(sql%rowcount||' is total number of rows');
    end if;
end;
