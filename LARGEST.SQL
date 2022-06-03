set serveroutput on
Declare
    a number;
    b number;
    c number;
Begin
    dbms_output.put_line('Enter a:');
        a:=&a;
    dbms_output.put_line('Enter b:');
        b:=&b;
    dbms_output.put_line('Enter c:');
        c:=&C;
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
/