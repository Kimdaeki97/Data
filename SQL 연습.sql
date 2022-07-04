--예제1
SELECT EMP_NAME 사원이름, ORG_CD 소속, POSITION 직무, SALARY 연봉
FROM cslee.TB_EMP
WHERE POSITION ='대리';

--예제2
select count(*) from cslee.tb_emp;
SELECT EMP_NAME 사원이름, ORG_CD 소속, POSITION 직무, SALARY 연봉
FROM cslee.TB_EMP;

SELECT EMP_NAME 사원이름, ORG_CD 소속, POSITION 직무, SALARY 연봉
FROM cslee.TB_EMP
WHERE SALARY >= 50000000 ;

-- 예제3: 연산자 우선순위
SELECT EMP_NAME 사원이름, ORG_CD 소속, POSITION 직책, SALARY 연봉
FROM cslee.TB_EMP
WHERE (ORG_CD = '08' OR ORG_CD = '09' OR ORG_CD = '10')
AND POSITION='사원'
AND SALARY >= 40000000
AND SALARY <= 50000000;

-- 예제4: 연산자 우선순위(Between A and B 구문)
SELECT EMP_NAME 사원이름, ORG_CD 소속, POSITION 직책, SALARY 연봉
FROM cslee.TB_EMP
WHERE ORG_CD IN ( '08', '09', '10')
AND POSITION='사원'
AND SALARY BETWEEN 40000000 AND 50000000;

SELECT EMP_NAME 사원이름, SALARY 연봉
FROM cslee.TB_EMP
WHERE SALARY BETWEEN 40000000 AND 50000000;

-- 예제5: where 조건절 -in
SELECT EMP_NAME, ORG_CD, POSITION
FROM cslee.TB_EMP
WHERE ORG_CD IN ('06','07')
AND POSITION IN ('팀장','과장');

SELECT EMP_NAME, ORG_CD, POSITION
FROM cslee.TB_EMP
WHERE (ORG_CD, POSITION)
IN (('06','팀장'), ('07','과장'));

-- 예제6: Where조건 - Like
-- "김"씨 성을 가진 직원들의 정보를 조회하는 Where절을 작성한다.
SELECT EMP_NAME 사원이름, ORG_CD 팀코드, POSITION 직책, ENT_DATE
입사일자
FROM cslee.TB_EMP
WHERE EMP_NAME LIKE '김%';

-- 이름의 두번째가 "승"인 임직원의 정보를 조회하라
SELECT EMP_NAME 사원이름, ORG_CD 팀코드, POSITION 직책, ENT_DATE
입사일자
FROM cslee.TB_EMP
WHERE EMP_NAME LIKE '_승%';

-- 예제7: Where조건 - IS NULL
SELECT EMP_NAME 사원이름, ORG_CD 소속, POSITION 직책, GENDER 성별
FROM cslee.TB_EMP
WHERE GENDER = NULL;

SELECT EMP_NAME 사원이름, ORG_CD 소속, POSITION 직책, GENDER 성별
FROM cslee.TB_EMP
WHERE GENDER IS NULL;

-- 예제8: Where조건 - 부정연산자
-- 영업3팀(10)의 사원중에서 '팀장'을 제외한 나머지 직원들의 자료를 찾는다.
SELECT EMP_NAME 사원이름, ORG_CD 소속, POSITION 직책
FROM cslee.TB_EMP
WHERE ORG_CD = '10'
AND NOT POSITION = '팀장';

-- 소속이 NULL이 아닌 직원의 자료를 출력하라
SELECT EMP_NAME 사원이름, ORG_CD 소속, POSITION 직책
FROM cslee.TB_EMP
WHERE ORG_CD IS NOT NULL;

-- 2. Order by 정렬 연습하기
-- 예제9
SELECT ORG_CD 부서, EMP_NAME 사원이름, ENT_DATE 입사일
FROM cslee.TB_EMP
ORDER BY ORG_CD, ENT_DATE DESC;

SELECT EMP_NAME, EMP_NO, ORG_CD
FROM cslee.TB_EMP
ORDER BY EMP_NAME ASC, EMP_NO ASC, EMP_NO DESC;

SELECT EMP_NAME 사원이름, EMP_NO 사원번호, ORG_CD 부서코드
FROM cslee.TB_EMP
ORDER BY 사원이름, 사원번호, 부서코드 DESC;

SELECT EMP_NAME, EMP_NO, ORG_CD
FROM cslee.TB_EMP
ORDER BY 1 ASC, 2 ASC, 3 DESC;

SELECT EMP_NAME 사원이름, EMP_NO 사원번호, ORG_CD 부서코드
FROM cslee.TB_EMP
ORDER BY EMP_NAME, 2, 부서코드 DESC;


