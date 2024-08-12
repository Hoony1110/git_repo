select * from tab;
select * from user_sequences;
desc employees;

select * from employees;
select employee_id, last_name, salary from employees;
select employee_id as 사원번호, last_name as "이 름", salary as "급 여" from employees; // " " → 공백이므로
select employee_id as 사원번호, last_name as "이 름", salary*12 as "연 봉" from employees;
select first_name || ' ' || last_name as "이 름" from employees;

// 1일차pdf 1번 문제
select employee_id as 사원번호, first_name || ' ' || last_name as "이 름", salary*12 ||'달러' as "연봉" from employees;
// 1일차pdf 2번 문제
select last_name || ' is a ' || JOB_ID as "Employee Detail" from employees;

select distinct department_id from employees;
select last_name, hire_date, department_id from employees where department_id=10 or department_id=90;
select last_name, hire_date, salary from employees where salary>=2500 and salary<3500;
select * from employees where last_name='King';
select * from employees where lower(last_name)='king';
select last_name, job_id, department_id from employees where job_id like '%MAN%';
select last_name, job_id, department_id from employees where job_id like 'IT%';
select last_name, salary, commission_pct from employees where commission_pct is not null;
select last_name, salary, commission_pct from employees where commission_pct is null;
select employee_id, last_name, job_id from employees where job_id='FI_MGR' or job_id='FI_ACCOUNT';
select employee_id, last_name, job_id from employees where job_id in ('FI_MGR','FI_ACCOUNT');
select employee_id, last_name, salary from employees where salary >=10000 and salary<=20000;
select employee_id, last_name, salary from employees where salary between 10000 and 20000;

//1일차pdf 3번 문제
select first_name || ' ' || last_name as 사원명, '$' || salary*12 as 월급, department_id as 부서코드 from employees where (salary<=2500 or salary>=3000) and department_id = 90;
//1일차pdf 4번 문제
select last_name as 이름, job_id as 업무ID, salary*12 ||'원' as 급여 from employees where job_id in('SA_REP','AD_PRES') and salary>10000;
//1일차pdf 5번 문제
select distinct job_id from employees;
//1일차pdf 6번 문제
select employee_id as 사원번호, last_name as 이름, hire_date as 입사일 from employees where hire_date like '05%';

select last_name, department_id, hire_date from employees order by 2 desc;
select last_name, department_id, hire_date from employees order by 2 desc, 3asc;

//2일차pdf 1번 문제
select last_name as 이름, salary*12 as 연봉 from employees order by 2 desc;

select employee_id, last_name, department_id from employees where lower(last_name) = 'higgins';
select mod(10,3) from dual;
select round(35768.357, 2) from dual; //-5→-4→-3→-2→-1→0→1→2→3
select round(35768.357, 0) from dual;
select round(35768.357 ,-3) from dual;
select trunc(35768.357 ,2) from dual;
select trunc(35768.357 ,0) from dual;
select trunc(35768.357 ,-3) from dual;

select concat('Hello', 'world') from dual;
create table text(str1 char(20), str2 varchar2(20));
insert into text(str1, str2) values('angle', 'angle');
insert into text(str1, str2) values('사천사', '사천사');
commit;
select lengthb(str1), lengthb(str2) from text;
select length(str1), length(str2) from text;
select length('korea') from dual;
select length('코리아') from dual;
select lengthb('korea') from dual;
select lengthb('코리아') from dual;
select instr('HelloWorld', 'W') from dual; //왼쪽부터 시작 시 1→2→3→4→5→6→7→8→9→10 / 오른쪽부터 시작 시 -10→-9→-8→-7→-6→-5→-4→-3→-2→-1
select instr('HelloWorld', 'o', -5) from dual;
select instr('HelloWorld', 'o', -1) from dual;
select substr('I am very happy', 6,4) from dual;
select substr('I am very happy', 6) from dual;
//2일차pdf 2번 문제

//----------------------------------------------------------------------------------------------------------------------2024_08_06
select width_bucket(70,0,100,10) from dual;
select rtrim('test  ') || 'exam' from dual;
select sysdate from dual;
select to_char(sysdate, 'YYYY"년" MM"월" DD"일"') AS 오늘날짜 from dual;
select to_char(sysdate, 'HH"시" MI"분" SS"초"') AS 오늘날짜 from dual;
select to_char(sysdate, 'HH24"시" MI"분" SS"초"') AS 오늘날짜 from dual;
select add_months(sysdate,7) from dual;
select last_day(sysdate) from dual;
select last_day('2004-02-01') from dual;
select last_day('2005-02-01') from dual;

2일차pdf 문제3
select to_date('2024-08-31', 'YYYY-MM-DD') - to_date('2024-08-07', 'YYYY-MM-DD') from dual;
select round ((to_date('2024-08-31', 'YYYY-MM-DD') - sysdate), 0) from dual;
select last_day(sysdate) - sysdate from dual;

select round(months_between('95-10-21', '94-10-20'), 0) from dual;
select last_name, to_char(salary, 'L99,999.00')from employees where last_name = 'King';
select to_char(to_date('97/9/30', 'YY-MM-DD') , 'YYYY-MON-DD') from dual;
select to_char(to_date('97/9/30', 'RR-MM-DD') , 'RRRR-MON-DD') from dual;
select to_char(to_date('17/9/30', 'YY-MM-DD') , 'YYYY-MON-DD') from dual;
select to_char(to_date('17/9/30', 'RR-MM-DD') , 'RRRR-MON-DD') from dual;

2일차pdf 문제4
select * from employees;
select last_name, to_char(hire_date, 'DD-MON-YYYY') from employees where hire_date < '2005-01-01';

select last_name, hire_date from employees where hire_date='05/09/30';
select last_name, hire_date from employees where hire_date='05/9/30';
select to_char(sysdate, 'YYYY-MM-DD') from dual;
select to_char(sysdate, 'YYYY-fmMM-DD') from dual;
select to_char(to_date('2011-03-01','YYYY-MM-DD'), 'YYYY-MM-DD') from dual;
select to_char(to_date('2011-03-01','YYYY-MM-DD'), 'YYYY-fmMM-DD') from dual;
select to_char(to_date('2011-03-01','YYYY-MM-DD'), 'YYYY-fmMM-fmDD') from dual;
select max(salary), min(salary), trunc(avg(salary),0), to_char(sum(salary), 'L9,999,999') from employees;

//2일차pdf 문제5
select count(*)-count(commission_pct) from employees;

select department_id from employees;
select count(department_id) from employees;
select count(*) from employees;
select count(distinct department_id) from employees;
select count(distinct nvl(department_id,0)) from employees;
select distinct nvl(department_id,0) from employees;

select job_id, decode(job_id,
                      'SA_MAN', 'Sales Dept',
                      'SA_REP', 'Sales Dept',
                      'Another') "분류"
                from employees
                order by 2;
                
select job_id, case job_id
                     when 'SA_MAN' then 'Sales Dept'
                     when 'SA_REP' then 'Sales Dept'
                     else 'Another'
               end "분류"
               from employees
               order by 2;

//2일차pdf 문제6
select * from employees;
select employee_id as 사원번호 , last_name as 사원명, case
                                                    when salary<10000 then '초급'
                                                    when salary<20000 then '중급'
                                                    else '고급'
                                                end "구분"
                                                from employees
                                                order by 3asc, 2asc; --asc생력 가능

//----------------------------------------------------------------------------------------------------------------------2024_08_87

select * from employees;
--테이블에 모든 사원의 사원번호, 이름(last_name), 급여 검색
select employee_id, last_name, salary from employees;
--employees 테이블의 모든 사원의 사원번호, 이름(last_name), 급여 검색(타이틀을 해당 문제에 맞게)
select employee_id as 사원번호, last_name as 이름, salary as 급여 from employees;
select employee_id 사원번호, last_name 이름, salary 급여 from employees;
--employee테이블 사원번호, 이름, 연봉을 구하시오
select employee_id as 사원번호, last_name as "이 름", salary*12 as "급 여" from employees; --별명에 공백이 있을 시 " "로 해줘야함
--연결 연산자(||) : 컬럼을 연결해서 출력 first_name과 last_name을 연결해서 출력하시오
select first_name ||' '|| last_name as "full name" from employees;
--1일차 문제1번
select employee_id as 사원번호, first_name || ' ' || last_name, salary*12||'달러' as "급여" from employees;
--1일차 문제2번
select last_name ||' '|| 'is a' || ' ' || job_id as "Employee Detail" from employees;
--employee 테이블에서 부서ID를 출력하시오 (중복 제거)
select distinct employee_id from employees;
--10번 부서 또는 90번 부서 사원들의 이름, 입사일, 부서id를 출력하시오
select last_name as 이름, hire_date as 입사일, department_id as 부서 from employees where department_id = 10 or department_id = 90;
select last_name as 이름, hire_date as 입사일, department_id as 부서 from employees where department_id in(10,90);
--급여가 2500이상 3500미만인 사원의 이름(last), 입사일, 급여를 검색하시오
select last_name as 이름 , hire_date as 입사일, salary as 급여 from employees where salary>=2500 and salary<3000;
--1일차 문제3번
select first_name ||' '|| last_name as 사원명,
        '$' || salary as 월급,
        department_id as 부서코드
        from employees
        where (salary<=2500 or salary>=3000) and department_id=90;
--king사원의 모든 컬럼을 표시하시오
select * from employees where last_name = 'King';
select * from employees where lower(last_name) = 'king';
--업무ID에 MAN이 포함되어있는 사원들의 이름, 업무ID, 부서ID를 출력하시오
select last_name as 이름, job_id as 업무ID, department_id as 부서ID from employees where job_id like '%MAN%';
--업무ID가 IT로 시작하는 사원들의 이름, 업무ID 부서ID를 출력하시오
select last_name as 이름, job_id as 업무ID, department_id as 부서ID from employees where job_id like 'IT%';
--커미션을 받는 사원들의 이름과 급여, 커미션을 출력하시오.
select * from employees;
select last_name as 이름, salary as 급여, commission_pct as 커미션 from employees where commission_pct is not null;
--커미션을 받지 않는 사원들의 이름과 급여, 커미션을 출력하시오
select last_name as 이름, salary as 급여, commission_pct as 커미션 from employees where commission_pct is null;
--업무 id가 FI_MGR이거나 FI_ACCOUNT인 사원들의 사원번호, 이름, 직무를 출력하시오
select employee_id as 사원번호, last_name as 이름, job_id as 직무 from employees where job_id in('FI_MGR', 'FI_ACCOUNT');
--급여가 10000이상 20000이하인 사원의 사원번호, 이름, 급여를 출력하시오
select employee_id as 사원번호, last_name as 이름, salary as 급여 from employees where salary between 10000 and 20000;
--엄무 id가 'SA_REP'이거나 'AD_PRES'이면서 급여가 10000을 초과하는 사람들의 이름, 업무ID, 급여를 출력하시오
select last_name as 이름, job_id as 업무ID, salary as 급여 from employees where job_id in('SA_REP', 'AD_PRES') and salary > 10000;
select last_name as 이름, job_id as 업무ID, salary as 급여 from employees where (job_id = 'SA_REP' or job_id= 'AD_PRES') and salary > 10000;
--Employees 테이블 업무id가 중복되지 않게 표시하는 질의를 작성하시오
select distinct job_id from employees;
--입사일이 2005년인 사원들의 사원번호, 이름, 입사일을 표시하시오
select employee_id as 사원번호, last_name as 이름, hire_date as 입사일 from employees where hire_date like '05%';
//----------------------------------------------------------------------------------------------------------------------2024_08_87 복습(1일차)

--group by 안했음 복습으로 해야함

select employee_id,
      employees.department_id,
      department_name
from employees, departments
where employees.department_id = departments.department_id;

select employee_id, e.department_id, department_name
from employees e, departments d
where e.department_id = d.department_id;

select employee_id, department_id, department_name
from employees
join departments using(department_id);

--3일차pdf 문제2번
select*from departments;
select*from locations;
select department_id,
       departments.location_id
       city
from departments, locations
where departments.location_id =locations.location_id;

select e.last_name, d.department_id, d.department_name
from employees e, departments d
where e.department_id = d.department_id(+);

select last_name, department_id, department_name
from employees
left join departments using(department_id);

select e.last_name, d.department_id, d.department_name
from employees e, departments d
where e.department_id(+) = d.department_id;

select employee_id, manager_id, last_name from  employees;
select employee_id, last_name from employees;
select e.employee_id as 사원번호,
       e.last_name as 사원이름,
       m.last_name as 관리자
from employees e, employees m
where m.employee_id = e.manager_id;

select e.employee_id as 사원번호,
       e.last_name as 사원이름,
       m.last_name as 관리자
from employees e
join employees m on(m.employee_id = e.manager_id);
//----------------------------------------------------------------------------------------------------------------------2024_08_08 복습(2일차)
-- 사원명,부서ID, 입사일 부서별로 내림차순 정렬하시오
select last_name, department_id, hire_date from employees order by 2 desc;
-- 사원명, 부서ID, 입사일을 부서별로 내림차순 정렬하시오 같은 부서가 있을 때는 입사일순으로 정렬하시오
select last_name as 사원명, employee_id as 부서ID, hire_date as 입사일
from employees order by 2 desc, 3 asc;
-- 2일차 문제1번
select last_name as 이름 , salary*12 as 연봉 from employees order by 2 desc;
-- 이름을 소문자로 바꾼 후 검색 'Higgins'사원의 사원번호, 이름, 부서번호를 검색하시오
select employee_id as 사원번호, last_name as 이름, department_id from employees
where lower(last_name) = 'higgins';
-- 10을 3으로 나눈 나머지 구하시오(mod)
select mod(10,3) from dual;
-- select mod(10,3) from dual;
-- 35765.357을 반올림(round) 위치가 n일 때 n이 양수이면 (n+1)에서 반올림이 되고 n이 음수이면 n의 위치에서 반올림 된다
select round(35765.357,0) from dual;
select round(35765.357,1) from dual;
select round(35765.357,2) from dual;
select round(35765.357,-1) from dual;
select round(35765.357,-2) from dual;
select round(35765.357,-3) from dual;
select round(35765.357,-4) from dual;
-- 35765.357을 내림(trunc) 위치가 n일 때 n이 양수이면 (n+1)에서 반올림이 되고 n이 음수이면 n의 위치에서 반올림 된다
select trunc(35765.357,0) from dual;
select trunc(35765.357,1) from dual;
select trunc(35765.357,2) from dual;
select trunc(35765.357,-1) from dual;
select trunc(35765.357,-2) from dual;
select trunc(35765.357,-3) from dual;
select trunc(35765.357,-4) from dual;
select ceil(35765.357) from dual;
-- concat('문자열1', '문자열2) : 문자열의 결합(문자열1+문자열2)
select concat('hello', 'world') from dual;
select * from text;
select lengthb(str1), lengthb(str2) from text;
select length(str1), length(str2) from text;
select length('korea') from dual;
select lengthb ('korea') from dual;
select length('코리아') from dual;
select lengthb ('코리아') from dual;
-- 지정한 문자열 찾기 : instr(표현식, 찾는 문자, [위치]) 양수: 앞(생략가능), 음수: 뒤
select instr('HelloWord', 'W') from dual;
select instr('HelloWord', 'o', -5) from dual;
select instr('HelloWord', 'o', -1) from dual;
-- 2일차 문제2번
select employee_id, first_name ||' '|| last_name as NAME,
       length(first_name ||' '|| last_name) as LENGTH
       from employees
       where first_name ||' '|| last_name like '%n';

select employee_id, concat(concat(first_name,' '),last_name) as NAME,
        length(concat(concat(first_name,' '),last_name)) as LENGTH 
        from employees
        where concat(concat(first_name,' '),last_name) like '%n';
        

//----------------------------------------------------------------------------------------------------------------------2024_08_89

create table employees_role as select * from employees where 1=0;
select * from employees;
select * from employees_role;

insert into employees_role values(101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568',
'1989-09-21', 'AD_VP', 17000.00, NULL, 100, 90);
insert into employees_role values(101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568',
'1989-09-21', 'AD_VP', 17000.00, NULL, 100, 90);
insert into employees_role values(101, 'Nee', 'Ko', 'NKOCHHAR', '515.123.4568',
'1989-09-21', 'AD_VP', 17000.00, NULL, 100, 90);
insert into employees_role values(200, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568',
'1989-09-21', 'AD_VP', 17000.00, NULL, 100, 90);
insert into employees_role values(200, 'Nee', 'Kochhar', 'NKOCHHAR', '515.123.4568',
'1989-09-21', 'AD_VP', 17000.00, NULL, 100, 90);
insert into employees_role values(300, 'GilDong', 'Hong', 'NKOCHHAR', '010-123-4567',
'2009-03-01', 'IT_PROG', 23000.00, NULL, 100, 90);
commit;

select employee_id, last_name from employees
union
select employee_id, last_name from employees_role;

select employee_id, last_name from employees
union all
select employee_id, last_name from employees_role;

select salary from employees where department_id=10
union all
select salary from employees where department_id=30 order by 1;

select employee_id, last_name from employees
minus
select employee_id, last_name from employees_role;

select employee_id, last_name from employees
intersect
select employee_id, last_name from employees_role;
--4일차pdf 1번
select last_name as 사원이름, job_id as 업무id, department_id as 부서id
from employees where department_id = 10
union
select last_name as 사원이름, job_id as 업무id, department_id as 부서id
from employees_role where job_id = 'IT_PROG';