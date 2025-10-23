# divide by 0
  declare 
    a NUMBER;
    b NUMBER;
    c NUMBER;
    error EXCEPTION;
BEGIN
    a:=:p;
    b:=:q;
    if b = 0 then
        RAISE error;
    else 
        c:= a/b;
        dbms_output.put_line('result is'||c);
    end if;
    EXCEPTION
        when error then
            DBMS_OUTPUT.PUT_LINE('Error: Divisor cannot be zero.');
end;  

#NO DATA FOUND EXCEPTION
TABLE CREATION:
#SQL
  create table emp(id number(8) primary key, name varchar2(20), dept varchar2(10));
#Plsql 
  DECLARE 
  e_idemp.empid%type;
  e_nameemp.empname%type; 
  e_deptemp.dept%type; 
  BEGIN
  e_id :=:e_id;
  SELECT  empname, dept INTO  e_name, e_dept FROM emp WHERE empid = e_id;  
     DBMS_OUTPUT.PUT_LINE ('Emp Name: '||  e_name); 
     DBMS_OUTPUT.PUT_LINE ('Department: ' || e_dept); 
  EXCEPTION 
     WHEN no_data_found THEN 
  dbms_output.put_line('No such Employee!'); 
     WHEN others THEN 
  dbms_output.put_line('Error!'); 
  END;
