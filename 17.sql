create table dept1
(
deptno number(2),
dname varchar(8),
loc varchar(13),
create_date date default sysdate);
desc dept1;

create table courses
(course_id number(5),
course_name varchar(15),
constraint cn_courses_course_id_pk primary key(course_id)
);

create table students
(student_id number(5),
student_name varchar(15),
course_id number(5),
constraint cn_students_student_id_pk primary key(student_id),
constraint cn_students_course_id_fk foreign key(course_id) references courses(course_id));

create table teach_emp
(empno number(5) primary key,
ename varchar(15) not null,
job varchar(10),
mgr number(5),
hiredate date default (sysdate),
photo blob,
sal number(7,2),
deptno number(3) not null
constraint admin_dept_fkey references departments(department_id));
desc course;

create table dept4
as
select employee_id,last_name,salary*12 annsal,hire_date from employees
where department_id=80;

alter table dept4
add (job_id varchar(10));
select * from dept4;
alter table dept4
modify (last_name varchar(30));

alter table dept4
drop (job_id);

alter table employees read only;
alter table employees
add (test varchar(20));
alter table employees read write;

drop table dept4;

select job_id from employees
union
select job_id
from retired_employee;

select manager_id,job_id
from employees
where department_id=80
minus
select manager_id,job_id
from retired_employees where department_id=80;

select location_id ,department_name "Department",
to_char(null) "Warehouse location"
from departments 
union
select location_id,to_char(null) "Department",
state_province
from locations;

select first_name,job_id,hire_date "HIRE_DATE"
from employees
union
select first_name,job_id,to_date(null) "HIRE_DATE"
from retired_employees;

declare
v_fname varchar(20);
begin
select first_name into v_fname from employees
where employee_id=100;
end;

select * from employees;
set serveroutput on;