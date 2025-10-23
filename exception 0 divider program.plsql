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
