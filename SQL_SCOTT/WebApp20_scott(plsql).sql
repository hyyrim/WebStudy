SELECT USER
FROM DUAL;
--==> SCOTT


DESC TBL_BOARD;
--==>
/*
�̸�       ��?       ����             
-------- -------- -------------- 
NUM      NOT NULL NUMBER(9)      
NAME     NOT NULL VARCHAR2(30)   
PWD      NOT NULL VARCHAR2(20)   
EMAIL             VARCHAR2(50)   
SUBJECT  NOT NULL VARCHAR2(100)  
CONTENT  NOT NULL VARCHAR2(4000) 
IPADDR            VARCHAR2(20)   
HITCOUNT NOT NULL NUMBER         
CREATED  NOT NULL DATE  
*/


DECLARE 
    V_CNT       NUMBER(9)   := 1;
    V_NAME      VARCHAR2(30);
    V_PWD       VARCHAR2(20);
    V_EMAIL     VARCHAR2(50);
    V_SUBJECT   VARCHAR2(100);
    V_CONTENT   VARCHAR2(4000);
    V_IPADDR    VARCHAR2(20);
    V_HITCOUNT  NUMBER;
    V_CREATED   DATE    := TO_DATE('2018-05-10', 'YYYY-MM-DD');
BEGIN
    LOOP
        EXIT WHEN V_CNT > 825;
        
        V_IPADDR := '211.238.142.';
        
        V_CREATED := V_CREATED + 1;
        
        IF (MOD(V_CNT, 5) = 0) THEN 
            V_NAME := '�谡��';
            V_PWD := 'java006$';
            V_EMAIL := 'zero@test.com';
            V_SUBJECT := '���� ���� �Խù�';
            V_CONTENT := '���� ���� ���빰�� �ۼ��Ͽ����ϴ�.';
            V_IPADDR := V_IPADDR || '151';
            V_HITCOUNT := V_CNT + 10;
        ELSIF (MOD(V_CNT, 3) = 0) THEN 
            V_NAME := '�質��';
            V_PWD := 'net006$';
            V_EMAIL := 'one@test.com';
            V_SUBJECT := '���� ���� �Խù�';
            V_CONTENT := '���� ���� ���빰�� �ۼ��Ͽ����ϴ�.';
            V_IPADDR := V_IPADDR || '164';
            V_HITCOUNT := V_CNT + 8;
        ELSIF (MOD(V_CNT, 7) = 0) THEN 
            V_NAME := '��ٿ�';
            V_PWD := 'com006$';
            V_EMAIL := 'two@test.com';
            V_SUBJECT := '����ũ�� ���� �Խù�';
            V_CONTENT := '����ũ�� ���� ���빰�� �ۼ��Ͽ����ϴ�.';
            V_IPADDR := V_IPADDR || '172';
            V_HITCOUNT := V_CNT + 13;
        ELSE
            V_NAME := '�̻���';
            V_PWD := 'java007$';
            V_EMAIL := 'study@test.com';
            V_SUBJECT := '������Ʈ ���� �Խù�';
            V_CONTENT := '������Ʈ ���� ���빰�� �ۼ��Ͽ����ϴ�.';
            V_IPADDR := V_IPADDR || '169';
            V_HITCOUNT := V_CNT + 30;
        END IF;
        
        V_NAME := V_NAME || LTRIM(TO_CHAR(V_CNT));
        V_SUBJECT := V_SUBJECT || LTRIM(TO_CHAR(V_CNT));
                
        INSERT INTO TBL_BOARD(NUM, NAME, PWD, EMAIL, SUBJECT, CONTENT, IPADDR, HITCOUNT, CREATED)
        VALUES(V_CNT, V_NAME, V_PWD, V_EMAIL, V_SUBJECT, V_CONTENT, V_IPADDR, V_HITCOUNT, V_CREATED);
        
        V_CNT := V_CNT + 1;
    
    END LOOP;
    
END;
--==> PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.

COMMIT;
--==> Ŀ�� �Ϸ�.




