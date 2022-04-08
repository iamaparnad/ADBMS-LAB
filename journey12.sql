SQL> desc BUS1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 BUS_NO                                    NOT NULL VARCHAR2(6)
 SOURCE                                             VARCHAR2(15)
 COUCH_TYPE                                         VARCHAR2(10)

SQL> desc RESERVATION1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PNR_NO                                    NOT NULL NUMBER(5)
 NAME                                               VARCHAR2(15)
 JOURNEY_DATE                                       VARCHAR2(15)
 NO_OF_SEATS                                        NUMBER(3)
 ADDRESS                                            VARCHAR2(15)
 CONTACT_NO                                         NUMBER(10)
 BUS_NO                                             VARCHAR2(6)
 SEAT_NO                                            NUMBER(3)

SQL> desc TICKET111;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 TICKET_NO                                 NOT NULL NUMBER(5)
 JOURNEY_DATE                                       VARCHAR2(15)
 AGE                                                NUMBER(2)
 SEX                                                VARCHAR2(10)
 SOURCE                                             VARCHAR2(10)
 DESTINATION                                        VARCHAR2(15)
 DEP_TIME                                           VARCHAR2(10)
 BUS_NO                                             VARCHAR2(6)

SQL> desc PASSENGERS;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PNR_NO                                    NOT NULL NUMBER(5)
 TICKET_NO                                          NUMBER(5)
 AGE                                                NUMBER(2)
 SEX                                                VARCHAR2(10)
 CONTACT_NO                                         NUMBER(10)
 NAME                                               VARCHAR2(15)

SQL> desc CANCELLATION;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PNR_NO                                    NOT NULL NUMBER(5)
 JOURNEY_DATE                                       VARCHAR2(15)
 SEAT_NO                                            NUMBER(12)
 CONTACT_NO                                         NUMBER(10)

SQL> select * from BUS1;

BUS_NO SOURCE          COUCH_TYPE                                               
------ --------------- ----------                                               
KL_01  TVM             A/C                                                      
KL_02  KOLLAM          NON_A/C                                                  
KL_03  KOCHI           A/C                                                      
KL_04  TRISSUR         NON_A/C                                                  
KL_05  PALAKKAD        A/C                                                      

SQL> select * from RESERVATION1;

    PNR_NO NAME            JOURNEY_DATE    NO_OF_SEATS ADDRESS                  
---------- --------------- --------------- ----------- ---------------          
CONTACT_NO BUS_NO    SEAT_NO                                                    
---------- ------ ----------                                                    
       101 JOHN            12-03-2022                2 PATTOM                   
9753186420 KL_01          28                                                    
                                                                                
       102 JOY             19-03-2022                2 AYOOR                    
9753186420 KL_02          28                                                    
                                                                                
       103 RIYA            12-04-2022                2 ALUVA                    
9753186420 KL_03          28                                                    
                                                                                

    PNR_NO NAME            JOURNEY_DATE    NO_OF_SEATS ADDRESS                  
---------- --------------- --------------- ----------- ---------------          
CONTACT_NO BUS_NO    SEAT_NO                                                    
---------- ------ ----------                                                    
       104 ALEENA          12-04-2022                2 TRISSUR                  
9753186420 KL_04          28                                                    
                                                                                
       105 HIMA            19-03-2022                2 PATTAMBI                 
9753186420 KL_05          28                                                    
                                                                                

SQL> select * from TICKET111;

 TICKET_NO JOURNEY_DATE           AGE SEX        SOURCE     DESTINATION         
---------- --------------- ---------- ---------- ---------- ---------------     
DEP_TIME   BUS_NO                                                               
---------- ------                                                               
       111 12-03-2022              32 MALE       NEDUMANGAD PATTOM              
10:30 AM   KL_01                                                                
                                                                                
       112 19-03-2022              31 MALE       KOLLAM     AYOOR               
10:45 AM   KL_02                                                                
                                                                                
       113 12-04-2022              28 FEMALE     ERNAKULAM  ALUVA               
11:30 AM   KL_03                                                                
                                                                                

 TICKET_NO JOURNEY_DATE           AGE SEX        SOURCE     DESTINATION         
---------- --------------- ---------- ---------- ---------- ---------------     
DEP_TIME   BUS_NO                                                               
---------- ------                                                               
       114 12-04-2022              27 FEMALE     CHALAKKUDI TRISSUR             
9:30 AM    KL_04                                                                
                                                                                
       115 19-03-2022              29 FEMALE     PALAKKAD   PATTAMBI            
10:00 AM   KL_05                                                                
                                                                                

SQL> select * from PASSENGERS;

    PNR_NO  TICKET_NO        AGE SEX        CONTACT_NO NAME                     
---------- ---------- ---------- ---------- ---------- ---------------          
        10        111         32 MALE       9898675740 JOHN                     
        11        112         31 MALE       7864098760 JOY                      
        12        113         28 FEMALE     9129834765 RIYA                     
        13        114         27 FEMALE     7856409818 ALEENA                   
        14        115         29 FEMALE     9878751230 HIMA                     

SQL> select * from CANCELLATION;

    PNR_NO JOURNEY_DATE       SEAT_NO CONTACT_NO                                
---------- --------------- ---------- ----------                                
        21 12-03-2022              34 9898675740                                
        22 19-03-2022              31 7864098760                                
        23 12-04-2022              37 9129834765                                
        24 12-04-2022              38 7856409818                                
        25 19-03-2022              36 9878751230                                
        26 10-10-2019              41 9856457457                                

6 rows selected.

SQL> SELECT TICKET_NO,NAME FROM PASSENGERS;

 TICKET_NO NAME                                                                 
---------- ---------------                                                      
       111 JOHN                                                                 
       112 JOY                                                                  
       113 RIYA                                                                 
       114 ALEENA                                                               
       115 HIMA                                                                 

SQL> SELECT * FROM PASSENGERS WHERE SEX='MALE';

    PNR_NO  TICKET_NO        AGE SEX        CONTACT_NO NAME                     
---------- ---------- ---------- ---------- ---------- ---------------          
        10        111         32 MALE       9898675740 JOHN                     
        11        112         31 MALE       7864098760 JOY                      

SQL> SELECT NAME FROM PASSENGERS WHERE AGE>=20 AND AGE<=40;

NAME                                                                            
---------------                                                                 
JOHN                                                                            
JOY                                                                             
RIYA                                                                            
ALEENA                                                                          
HIMA                                                                            

SQL> ALTER TABLE CANCELLATION MODIFY SEAT_NO NUMBER(15);

Table altered.

SQL> DESC CANCELLATION;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PNR_NO                                    NOT NULL NUMBER(5)
 JOURNEY_DATE                                       VARCHAR2(15)
 SEAT_NO                                            NUMBER(15)
 CONTACT_NO                                         NUMBER(10)

SQL> DELETE FROM BUS1 WHERE BUS_NO='KL_02';
DELETE FROM BUS1 WHERE BUS_NO='KL_02'
*
ERROR at line 1:
ORA-02292: integrity constraint (DB41.SYS_C005775) violated - child record 
found 


SQL> SELECT PNR_NO FROM CANCELLATION WHERE JOURNEY_DATE='12-03-2022';

    PNR_NO                                                                      
----------                                                                      
        21                                                                      

SQL> SELECT COUNT(SEX) FROM TICKET111 WHERE BUS_NO='KL_03' AND SEX='FEMALE';

COUNT(SEX)                                                                      
----------                                                                      
         1                                                                      

SQL> SELECT NAME FROM PASSENGERS ORDERBY NAME;
SELECT NAME FROM PASSENGERS ORDERBY NAME
                                    *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> SELECT NAME FROM PASSENGERS ORDER BY NAME;

NAME                                                                            
---------------                                                                 
ALEENA                                                                          
HIMA                                                                            
JOHN                                                                            
JOY                                                                             
RIYA                                                                            

SQL> SELECT NAME,TICKET_NO FROM PASSENGERS WHERE NAME LIKE 'R%A';

NAME             TICKET_NO                                                      
--------------- ----------                                                      
RIYA                   113                                                      


