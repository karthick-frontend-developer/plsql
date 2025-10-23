#sql
  create table emp(id number(3) primary key, ename varchar2(20), dept varchar2(10),salary number(8));
  insert into emp(id,name,dept,salary) values(100,'dinesh','IT',2000);
  insert into emp(id,name,dept,salary) values(101,'spider-man','unemp',0);

#plsql
  declare
    CURSOR cus is SELECT
    id,ename from emp;
    emp_row cus%rowtype;
begin
    open cus;
        loop
            fetch cus into emp_row;
            exit when cus%notfound;
            dbms_output.put_line('ID = '||emp_row.id||' name = '||emp_row.ename);
        end loop;
    close cus;
end;
