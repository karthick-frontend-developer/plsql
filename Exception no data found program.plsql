SQL:

  create table emp(id number(3) primary key, ename varchar2(20), dept varchar2(10));
  insert into emp(id,ename,dept) values(100,'dinesh','IT');

Plsql: 

  declare
      emp_id number(3);
      emp_name varchar2(20);
      emp_dept VARCHAR2(10);
  begin
      emp_id:=:emp_id;
      select ename,dept into emp_name,emp_dept from emp where id = emp_id;
      DBMS_OUTPUT.PUT_LINE ('Emp Name: '||emp_name); 
      DBMS_OUTPUT.PUT_LINE ('Department: ' || emp_dept);
  EXCEPTION
      when no_data_found THEN
          dbms_output.put_line('No such Employee');
      when OTHERS then
          dbms_output.put_line('error');
  end;
