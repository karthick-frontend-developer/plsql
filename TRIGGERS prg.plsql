#sql
  create table emp(id number(3) primary key, ename varchar2(20), dept varchar2(10),salary number(8));
  insert into emp(id,name,dept,salary) values(100,'dinesh','IT',2000);
  insert into emp(id,name,dept,salary) values(101,'nigga','IT',4000);
#plsql  
  CREATE OR REPLACE TRIGGER display_salary_changes
  BEFORE DELETE OR INSERT OR UPDATE ON emp
  FOR EACH ROW 
  WHEN (NEW.ID > 0) 
  DECLARE 
  sal_diff number; 
  BEGIN 
  sal_diff := :NEW.salary  - :OLD.salary; 
  dbms_output.put_line('Old salary: ' || :OLD.salary); 
  dbms_output.put_line('New salary: ' || :NEW.salary); 
  dbms_output.put_line('Salary difference: ' || sal_diff); 
  END;
#sql(to see output)
  update emp set salary = salary + 100;
