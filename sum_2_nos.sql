SET SERVEROUTPUT ON     
BEGIN
 DECLARE
 a number(5);
 b number(5);
 c number(5);
 BEGIN
 a:=&a;
b:=&b;
 c:=a+b;
DBMS_OUTPUT.PUT_LINE('THE SUM IS '||c);
END;
END;
/ 