create table employees(
 id serial primary key,
 employee_name varchar(50) not null
);

	
insert into employees (employee_name)
	values  ('Irina'),
			('Andrew'),
			('Tatiana'),
			('Galina'),
			('Sergey'),
			('Maxim'),
			('Artyom'),
			('Viktoria'),
			('Ekaterina'),
			('Vadim'),	
			('Igor'),
			('Oleg'),
			('Nikita'),
			('Yulia'),
			('Marina'),
			('Nastya'),
			('Lika'),
			('Xenia'),
			('Elisaveta'),
			('Roman'),
            ('Alina'),
			('Alisa'),
			('Alyona'),
			('Dana'),
			('Denis'),
			('Miron'),
			('Vladimir'),
			('Petr'),
			('Eva'),
			('Adam'),	
			('Agnessa'),
			('Aleftina'),
			('Adelina'),
			('Adolf'),
			('Aleksandr'),
			('Aleksey'),
			('Nikolay'),
			('Pavel'),
			('Fedor'),
			('Natalia'),
            ('Alesya'),	
			('Alik'),
			('Alla'),
			('Alsy'),
			('Albert'),
			('Valentin'),
			('Vanessa'),
			('Valeriy'),
			('Vasiliy'),
			('Vera'),
			('Venedikt'),
            ('Viktor'),
			('Violetta'),
			('Vitaliy'),
			('Vlad'),
			('Vsevolod'),
			('Taisia'),
			('Tamila'),
			('Taras'),
			('Tim'),
			('Tixon'),	
			('Zina'),
			('Zlata'),
			('Zoya'),
			('Boris'),
			('Bella'),
			('Bogdan'),
			('Ella'),
			('Evelina'),
			('Eldar');


create table salary(
 id serial primary key,
 monthly_salary int not null
);



insert into salary (monthly_salary)
	values  (1000),
			(1100),
			(1200),
			(1300),
			(1400),
			(1500),
			(1600),
			(1700),
			(1800),
			(1900),
			(2000),
			(2100),
			(2200),
			(2300),
			(2400);
		
	create table employee_salary( 
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);	



insert into employee_salary (employee_id, salary_id)
	values  (71, 1),
			(72, 2),
			(73, 3),
			(74, 4),
			(75, 5),
			(76, 6),
			(77, 7),
			(78, 8),
			(79, 9),
			(80, 10),
			(1, 11),
			(2, 12),
			(3, 13),
			(4, 14),
			(5, 15),
			(6, 16),
			(7, 17),
			(8, 18),
			(9, 19),
			(10, 20),
			(11, 21),
			(12, 22),
			(13, 23),
			(14, 24),
			(15, 25),
			(16, 26),
			(17, 27),
			(18, 28),
			(19, 29),
			(20, 30),
			(21, 31),
			(22, 32),
			(23, 33),
			(24, 34),
			(25, 35),
			(26, 36),
			(27, 37),
			(28, 38),
			(29, 39),
			(30, 40);


create table roles (  
id serial primary key,
role_name int unique not null
);



alter table roles 
alter column role_name type varchar(30);

insert into roles (role_name)
	values ('Junior Python developer'),
		   ('Middle Python developer'),
		   ('Senior Python developer'),
		   ('Junior Java developer'),
		   ('Middle Java developer'),
		   ('Senior Java developer'),
		   ('Junior JavaScript developer'),
		   ('Middle JavaScript developer'),
		   ('Senior JavaScript developer'),
		   ('Junior Manual QA developer'),
		   ('Middle Manual QA developer'),
		   ('Senior Manual QA developer'),
		   ('Project Manager'),
		   ('Designer'),
		   ('HR'),
		   ('CEO'),
		   ('Sales manager'),
		   ('Junior Automation QA developer'),
		   ('Middle Automation QA developer'),
		   ('Senior Automation QA developer');
	
		  

		  
		  create table roles_employee( 
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id) 
);		
		
		
		
insert into roles_employee (employee_id, role_id)
	values  (1, 1),
			(2, 2),
			(3, 3),
			(4, 4),
			(5, 5),
			(6, 6),
			(7, 7),
			(8, 8),
			(9, 9),
			(10, 10),
			(11, 11),
			(12, 12),
			(13, 13),
			(14, 14),
			(15, 15),
			(16, 16),
			(17, 17),
			(18, 18),
			(19, 19),
			(20, 20),
			(21, 1),
			(22, 2),
			(23, 3),
			(24, 4),
			(25, 5),
			(26, 6),
			(27, 7),
			(28, 8),
			(29, 9),
			(30, 10),
			(31, 11),
			(32, 12),
			(33, 13),
			(34, 14),
			(35, 15),
			(36, 16),
			(37, 17),
			(38, 18),
			(39, 19),
			(40, 20);
		
	
		