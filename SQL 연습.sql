--����1
SELECT EMP_NAME ����̸�, ORG_CD �Ҽ�, POSITION ����, SALARY ����
FROM cslee.TB_EMP
WHERE POSITION ='�븮';

--����2
select count(*) from cslee.tb_emp;
SELECT EMP_NAME ����̸�, ORG_CD �Ҽ�, POSITION ����, SALARY ����
FROM cslee.TB_EMP;

SELECT EMP_NAME ����̸�, ORG_CD �Ҽ�, POSITION ����, SALARY ����
FROM cslee.TB_EMP
WHERE SALARY >= 50000000 ;

-- ����3: ������ �켱����
SELECT EMP_NAME ����̸�, ORG_CD �Ҽ�, POSITION ��å, SALARY ����
FROM cslee.TB_EMP
WHERE (ORG_CD = '08' OR ORG_CD = '09' OR ORG_CD = '10')
AND POSITION='���'
AND SALARY >= 40000000
AND SALARY <= 50000000;

-- ����4: ������ �켱����(Between A and B ����)
SELECT EMP_NAME ����̸�, ORG_CD �Ҽ�, POSITION ��å, SALARY ����
FROM cslee.TB_EMP
WHERE ORG_CD IN ( '08', '09', '10')
AND POSITION='���'
AND SALARY BETWEEN 40000000 AND 50000000;

SELECT EMP_NAME ����̸�, SALARY ����
FROM cslee.TB_EMP
WHERE SALARY BETWEEN 40000000 AND 50000000;

-- ����5: where ������ -in
SELECT EMP_NAME, ORG_CD, POSITION
FROM cslee.TB_EMP
WHERE ORG_CD IN ('06','07')
AND POSITION IN ('����','����');

SELECT EMP_NAME, ORG_CD, POSITION
FROM cslee.TB_EMP
WHERE (ORG_CD, POSITION)
IN (('06','����'), ('07','����'));

-- ����6: Where���� - Like
-- "��"�� ���� ���� �������� ������ ��ȸ�ϴ� Where���� �ۼ��Ѵ�.
SELECT EMP_NAME ����̸�, ORG_CD ���ڵ�, POSITION ��å, ENT_DATE
�Ի�����
FROM cslee.TB_EMP
WHERE EMP_NAME LIKE '��%';

-- �̸��� �ι�°�� "��"�� �������� ������ ��ȸ�϶�
SELECT EMP_NAME ����̸�, ORG_CD ���ڵ�, POSITION ��å, ENT_DATE
�Ի�����
FROM cslee.TB_EMP
WHERE EMP_NAME LIKE '_��%';

-- ����7: Where���� - IS NULL
SELECT EMP_NAME ����̸�, ORG_CD �Ҽ�, POSITION ��å, GENDER ����
FROM cslee.TB_EMP
WHERE GENDER = NULL;

SELECT EMP_NAME ����̸�, ORG_CD �Ҽ�, POSITION ��å, GENDER ����
FROM cslee.TB_EMP
WHERE GENDER IS NULL;

-- ����8: Where���� - ����������
-- ����3��(10)�� ����߿��� '����'�� ������ ������ �������� �ڷḦ ã�´�.
SELECT EMP_NAME ����̸�, ORG_CD �Ҽ�, POSITION ��å
FROM cslee.TB_EMP
WHERE ORG_CD = '10'
AND NOT POSITION = '����';

-- �Ҽ��� NULL�� �ƴ� ������ �ڷḦ ����϶�
SELECT EMP_NAME ����̸�, ORG_CD �Ҽ�, POSITION ��å
FROM cslee.TB_EMP
WHERE ORG_CD IS NOT NULL;

-- 2. Order by ���� �����ϱ�
-- ����9
SELECT ORG_CD �μ�, EMP_NAME ����̸�, ENT_DATE �Ի���
FROM cslee.TB_EMP
ORDER BY ORG_CD, ENT_DATE DESC;

SELECT EMP_NAME, EMP_NO, ORG_CD
FROM cslee.TB_EMP
ORDER BY EMP_NAME ASC, EMP_NO ASC, EMP_NO DESC;

SELECT EMP_NAME ����̸�, EMP_NO �����ȣ, ORG_CD �μ��ڵ�
FROM cslee.TB_EMP
ORDER BY ����̸�, �����ȣ, �μ��ڵ� DESC;

SELECT EMP_NAME, EMP_NO, ORG_CD
FROM cslee.TB_EMP
ORDER BY 1 ASC, 2 ASC, 3 DESC;

SELECT EMP_NAME ����̸�, EMP_NO �����ȣ, ORG_CD �μ��ڵ�
FROM cslee.TB_EMP
ORDER BY EMP_NAME, 2, �μ��ڵ� DESC;


