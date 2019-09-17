select avg(salary),max(salary),
min(salary),sum(salary)
from employees
where job_id like '%REP%';

select min(hire_date),max(hire_date)
from employees;

select count(*)
from employees
where department_id=50;

select count(commission_pct)
from employees
where department_id=50;

select count(distinct department_id)
from employees;

select avg(commission_pct)
from employees;

select avg(nvl(commission_pct,0))                                                                                                                                                                                                                                                              
from employees;

select department_id,avg(salary)
from employees
group by department_id;

select avg(salary)
from employees
group by department_id;

select department_id,job_id,sum(salary)
from employees
where department_id>40
group by department_id,job_id
order by department_id;

select department_id,max(salary)
from employees
group by department_id
having max(salary)<10000;

select job_id,sum(salary) payroll
from employees
where job_id not like'%REP%'
group by job_id
having sum(salary)>13000
order by sum(salary);

select max(avg(salary))
from employees
group by department_id;

select employee_id,first_name,job_id,job_title
from employees natural join jobs;

select employee_id,department_id,department_name
from employees natural join departments;

select employee_id,last_name,location_id,department_id
from employees join departments
using (department_id);

desc countries;
select country_name,region_name
from countries join regions
using(region_id);

select l.city,d.department_name
from locations l join departments d
using (location_id)
where d.department_name='Operations';

SELECT e.employee_id, e.last_name, e.department_id,
d.department_id, d.location_id
FROM employees e JOIN departments d
ON (e.department_id = d.department_id);

select e.employee_id,j.job_title
from employees e join jobs j
on(e.job_id=j.job_id);

SELECT e.employee_id, l.city, d.department_name,
c.country_name,r.region_name
FROM employees e
JOIN departments d
ON d.department_id = e.department_id
JOIN locations l
ON d.location_id = l.location_id
join countries c
on l.country_id=c.country_id
join regions r
on c.region_id=r.region_id;

SELECT e.employee_id, e.last_name, e.department_id,
d.department_id, d.location_id
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
AND e.manager_id = 149 ;

select * from employees;

select w.last_name emp,m.last_name mgr
from employees w join employees m
on(w.manager_id=m.employee_id);

select * from tab;

select e.last_name,j.job_id,
(j.end_date-j.start_date) "duration"
from employees e join job_history j
on e.HIRE_DATE
between j.start_date and j.end_date;

SELECT e.last_name, e.department_id, d.department_name
FROM employees e  JOIN departments d
ON (e.department_id(+)= d.department_id(+)) ;

select e.last_name, d.department_id,d.department_name
from employees e full outer join departments d
on (e.department_id=d.department_id);

select last_name,department_name
from employees
cross join departments;

--SUB QUERIES
select last_name,hire_date
from employees
where hire_date<(select hire_date
from employees where last_name='Davies');

select *from employees;