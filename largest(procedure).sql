set serveroutput on
 CREATE OR REPLACE PROCEDURE LARGEST IS
BEGIN
Declare
    a number;
    b number;
    c number;
Begin
        a:=&a;
        b:=&b;
        c:=&c;
if (a>b) and (a>c)
    then
    dbms_output.put_line('GREATEST NUMBER IS '||a);
elsif (b>a) and (b>c)
    then
    dbms_output.put_line('GREATEST NUMBER IS '||b);
else
    dbms_output.put_line('GREATEST NUMBER IS '||c);
end if;
End;
END;
/