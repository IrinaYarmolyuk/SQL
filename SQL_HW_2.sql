select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from roles_employee

-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employees.employee_name, salary.monthly_salary from employees
join employee_salary 
on employee_salary.employee_id = employees.id 
join salary 
on employee_salary.salary_id = salary.id

 -- 2. Вывести всех работников у которых ЗП меньше 2000.

select employees.employee_name, salary.monthly_salary from employees
join employee_salary 
on employee_salary.employee_id = employees.id 
join salary 
on employee_salary.salary_id = salary.id
where salary.monthly_salary < '2400'

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select salary.monthly_salary, salary.id from salary 
join employee_salary es 
on salary.id = es.salary_id 
join employees e
on es.employee_id = e.id 


--  4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select salary.monthly_salary, salary.id from salary 
join employee_salary es 
on salary.id = es.salary_id 
join employees e 
on es.employee_id = e.id 
where salary.monthly_salary < '2300'

--  5. Найти всех работников кому не начислена ЗП.

select * 
from employees
	left join employee_salary on employees.id = employee_salary.employee_id
	left join salary on employee_salary.id = salary.id
where monthly_salary is null


-- 6. Вывести всех работников с названиями их должности.

select employees.employee_name, roles.role_name from employees
join roles_employee
on employees.id = roles_employee.employee_id 
join roles 
on roles_employee.role_id = roles.id 

--  7. Вывести имена и должность только Java разработчиков.

select employees.employee_name, roles.role_name from employees
join roles_employee
on employees.id = roles_employee.employee_id 
join roles 
on roles_employee.role_id = roles.id 
where roles.role_name like '%Java developer%'

--  8. Вывести имена и должность только Python разработчиков.

select employees.employee_name, roles.role_name from employees
join roles_employee
on employees.id = roles_employee.employee_id 
join roles 
on roles_employee.role_id = roles.id 
where roles.role_name like '%Python developer%'

--  9. Вывести имена и должность всех QA инженеров.

select employees.employee_name, roles.role_name from employees
join roles_employee
on employees.id = roles_employee.employee_id 
join roles 
on roles_employee.role_id = roles.id 
where roles.role_name like '%QA%'

--  10. Вывести имена и должность ручных QA инженеров.

select employees.employee_name, roles.role_name from employees
join roles_employee
on employees.id = roles_employee.employee_id 
join roles 
on roles_employee.role_id = roles.id 
where roles.role_name like '%Manual QA%'

 -- 11. Вывести имена и должность автоматизаторов QA

select employees.employee_name, roles.role_name from employees
join roles_employee
on employees.id = roles_employee.employee_id 
join roles 
on roles_employee.role_id = roles.id 
where roles.role_name like '%Automation QA%'

--  12. Вывести имена и зарплаты Junior специалистов

select employee_name, monthly_salary, role_name
from employees
left join roles_employee on employees.id = roles_employee.employee_id 
right join roles on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.id = salary.id
where roles.role_name like '%Junior%'

--  13. Вывести имена и зарплаты Middle специалистов

select employee_name, monthly_salary, role_name
from employees
left join roles_employee on employees.id = roles_employee.employee_id 
right join roles on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.id = salary.id
where roles.role_name like '%Middle%'

--  14. Вывести имена и зарплаты Senior специалистов

select employee_name, monthly_salary, role_name
from employees
left join roles_employee on employees.id = roles_employee.employee_id 
right join roles on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.id = salary.id
where roles.role_name like '%Senior%'

-- 15. Вывести зарплаты Java разработчиков

select salary.monthly_salary
from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id  = employees.id 
right join roles_employee on  employees.id = roles_employee.employee_id
join roles on roles_employee.role_id  = roles.id
where roles.role_name like '%Java %'

--  16. Вывести зарплаты Python разработчиков 

select salary.monthly_salary, roles.role_name 
from salary
join employee_salary on salary.id = employee_salary.salary_id 
join employees on employee_salary.employee_id  = employees.id 
left join roles_employee on  employees.id = roles_employee.employee_id
join roles on roles_employee.role_id  = roles.id
where roles.role_name like '%Python%'

 -- 18. Вывести имена и зарплаты Middle JS разработчиков

select employee_name, monthly_salary, role_name
from employees
left join roles_employee on employees.id = roles_employee.employee_id 
right join roles on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.id = salary.id
where roles.role_name like '%Middle JavaScript%'

-- 19. Вывести имена и зарплаты Senior Java разработчиков

select employee_name, monthly_salary, role_name
from employees
left join roles_employee on employees.id = roles_employee.employee_id 
right join roles on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.id = salary.id
where roles.role_name like '%Senior Java %'

-- 20. Вывести зарплаты Junior QA инженеров

select employee_name, monthly_salary, role_name
from employees
left join roles_employee on employees.id = roles_employee.employee_id 
right join roles on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.id = salary.id
where roles.role_name like '%Junior%QA%'

--  21. Вывести среднюю зарплату всех Junior специалистов

select avg(monthly_salary)
from employees
left join roles_employee on employees.id = roles_employee.employee_id 
right join roles on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.id = salary.id
where roles.role_name like '%Junior%'

-- 22. Вывести сумму зарплат JS разработчиков

select sum(monthly_salary)
from employees
left join roles_employee on employees.id = roles_employee.employee_id 
right join roles on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.id = salary.id
where roles.role_name like '%Java %'

--  23. Вывести минимальную ЗП Java разработчиков

select min(monthly_salary)
from employees
left join roles_employee on employees.id = roles_employee.employee_id 
right join roles on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.id = salary.id
where roles.role_name like '%Java %'

--  24. Вывести максимальную ЗП Java разработчиков

select max(monthly_salary)
from employees
left join roles_employee on employees.id = roles_employee.employee_id 
right join roles on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.id = salary.id
where roles.role_name like '%Java %'

-- 25. Вывести количество QA инженеров

select count(role_name)
from employees
left join roles_employee on employees.id = roles_employee.employee_id 
right join roles on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.id = salary.id
where roles.role_name like '%QA%'

-- 26. Вывести количество Middle специалистов.

select count(role_name)
from employees
left join roles_employee on employees.id = roles_employee.employee_id 
right join roles on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.id = salary.id
where roles.role_name like '%Middle%'

-- 27. Вывести количество разработчиков

select count(role_name)
from employees
left join roles_employee on employees.id = roles_employee.employee_id 
right join roles on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.id = salary.id
where roles.role_name like '%developer%'

--  28. Вывести фонд (сумму) зарплаты разработчиков.

select sum(monthly_salary)
from employees
left join roles_employee on employees.id = roles_employee.employee_id 
right join roles on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.id = salary.id
where roles.role_name like '%developer%'

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select employee_name, role_name, monthly_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id 
right join roles on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.id = salary.id
order by monthly_salary asc

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employee_name, role_name, monthly_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id 
right join roles on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.id = salary.id
where monthly_salary between 1700 and 2300
order by monthly_salary asc

--  31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employee_name, role_name, monthly_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id 
right join roles on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.id = salary.id
where monthly_salary < '2300'
order by monthly_salary asc

--  32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employee_name, role_name, monthly_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id 
right join roles on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.id = salary.id
where monthly_salary in ('1100', '1500', '2000')
order by monthly_salary asc









	












