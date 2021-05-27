SELECT USER
FROM DUAL;
--==> SCOTT

--�� ���� ���̺� ����
DROP TABLE TBL_SCORE PURGE;
--==> Table TBL_SCORE��(��) �����Ǿ����ϴ�.

--�� �ǽ� ���̺� ����(TBL_SCORE)
CREATE TABLE TBL_SCORE
( SID   NUMBER
, NAME  VARCHAR(30)
, KOR   NUMBER(3)
, ENG   NUMBER(3)
, MAT   NUMBER(3)
);
--==> Table TBL_SCORE��(��) �����Ǿ����ϴ�.


--�� ������ ���̺��� �������� �߰�
ALTER TABLE TBL_SCORE
ADD CONSTRAINT SCORE_SID_PK PRIMARY KEY(SID);
--==> Table TBL_SCORE��(��) ����Ǿ����ϴ�.

ALTER TABLE TBL_SCORE
ADD CONSTRAINT SCORE_KOR_CK CHECK(KOR BETWEEN 0 AND 100);
--==> Table TBL_SCORE��(��) ����Ǿ����ϴ�.

ALTER TABLE TBL_SCORE
ADD CONSTRAINT SCORE_ENG_CK CHECK(ENG BETWEEN 0 AND 100);
--==> Table TBL_SCORE��(��) ����Ǿ����ϴ�.

ALTER TABLE TBL_SCORE
ADD CONSTRAINT SCORE_MAT_CK CHECK(MAT BETWEEN 0 AND 100);
--==> Table TBL_SCORE��(��) ����Ǿ����ϴ�.


--�� ���� ������ ����
DROP SEQUENCE SCORESEQ;
--==> Sequence SCORESEQ��(��) �����Ǿ����ϴ�.

--�� �ǽ� ���� ������ ���� ����
CREATE SEQUENCE SCORESEQ
NOCACHE;
--==> Sequence SCORESEQ��(��) �����Ǿ����ϴ�.

--------------------------------------------------------------------------------
-- [������ ������]


--�� ����Ʈ ��ȸ ������ ����
SELECT SID, NAME, KOR, ENG, MAT
     , (KOR+ENG+MAT) AS TOT
     , ((KOR+ENG+MAT)/3) AS AVG
FROM TBL_SCORE
ORDER BY SID ASC;
--> �� �� ����
SELECT SID, NAME, KOR, ENG, MAT, (KOR+ENG+MAT) AS TOT, ((KOR+ENG+MAT)/3) AS AVG FROM TBL_SCORE ORDER BY SID ASC
;



--�� ������ �Է� ������ ����
INSERT INTO TBL_SCORE(SID, NAME, KOR, ENG, MAT)
VALUES(SCORESEQ.NEXTVAL, '������', 90, 80, 70);
--> �� �� ����
INSERT INTO TBL_SCORE(SID, NAME, KOR, ENG, MAT) VALUES(SCORESEQ.NEXTVAL, '������', 90, 80, 70)
;
--==> 1 �� ��(��) ���ԵǾ����ϴ�.


--�� ��ü �ο��� ��ȸ ������ ����
SELECT COUNT(*) AS COUNT
FROM TBL_SCORE;
--> �� �� ����
SELECT COUNT(*) AS COUNT FROM TBL_SCORE
;

--�� ������ Ŀ��
COMMIT;
--==> Ŀ�� �Ϸ�.

--------------------------------------------------------------------------------
-- �Է� ������
INSERT INTO TBL_SCORE(SID, NAME, KOR, ENG, MAT)
VALUES(SCORESEQ.NEXTVAL, '������', 90, 80, 70);
--> �� �� ����
INSERT INTO TBL_SCORE(SID, NAME, KOR, ENG, MAT) VALUES(SCORESEQ.NEXTVAL, '������', 90, 80, 70)
;


-- ��ȣ, �̸�, ����, ����, ����, ����, ��� ��ü ��ȸ ������
SELECT SID, NAME, KOR, ENG, MAT, (KOR+ENG+MAT)AS TOT, ((KOR+ENG+MAT)/3.0) AS AVG
FROM TBL_SCORE
ORDER BY 1;
--> �� �� ����
SELECT SID, NAME, KOR, ENG, MAT, (KOR+ENG+MAT)AS TOT, ((KOR+ENG+MAT)/3.0) AS AVG FROM TBL_SCORE ORDER BY 1
;

COMMIT;