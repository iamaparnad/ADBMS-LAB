 SET SERVEROUTPUT ON     
BEGIN
 DECLARE
 n number(5);
 s number(5);
 i number(5);
 BEGIN
 i:=0;
 s:=0;
 n:=5;
 while(i<=n)
 LOOP
s:=s+i;
i:=i+1;
END LOOP;
DBMS_OUTPUT.PUT_LINE('THE SUM IS '||s);
END;
END;
/ 

