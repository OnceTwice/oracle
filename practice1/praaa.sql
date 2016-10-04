-- 1번 : 정렬은 입사일(hire_date)의 올림차순(ASC)으로 가장 선임부터 출력
-- 이름(first_name last_name), 이메일(salary), 전화번호(phone_number)순서이고, “이름”, “이메일”, “전화번호”로 컬럼이름을 대체
select first_name || ' ' ||last_name as "이름", email as "이메일", phone_number as "전화번호"
from employees
order by hire_date asc;

-- 2번 : 업무(JOBS)별로 업무이름(JOB_TITLE)과 최고임금(max_salary)를 임금의 내림차순(DESC)로 정렬
select job_id, max_salary
from jobs
order by job_id desc, max_salary desc;

-- 3번 : 매니저가 없는 직원의 수
select count(*)
from employees
where manager_id is null;

-- 4번 : 업무를 job_id, max_salary 내림차순 으로 정렬
select *
from jobs
order by job_id desc, max_salary desc;

-- 5번 : 부서의 총 갯수
select count(*)
from departments;

-- 6번 : 부서 이름이 긴 순서대로 전체 부서를 출력
select department_name, length(department_name)
from departments
order by length(department_name) desc;

-- 7번 : 매니저가 없는 부서의 수
select count(*)
from departments
where manager_id is null;

-- 8번 : 지사가 있을 것으로 예상되는 나라들의 나라이름을 대문자로 출력하고 오름차순으로 정렬
select UPPER(country_name)
from countries
order by country_name asc;

-- 9번 : 전 세계를 몇 개의 지역으로 나누어 관리하는가 각 지역의 이름 길이를 오름차순으로 정렬
select *
from locations
where state_province is not null
order by length(state_province) asc;

-- 10번 : 부서 사무실이 위치한 도시는 어떤 것들이 있는가 중복되지 않도록 도시 이름을 소문자로 오름차순으로 정렬
select distinct(lower(city))
from locations
order by lower(city) asc;