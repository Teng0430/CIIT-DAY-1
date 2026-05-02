select * from employee e;

select id,last_name,first_name from employee e;

select * from employee where department_id = 1;

insert into employee (email, department_id, last_name, first_name, birthday, date_hired, created_date)
values ('trash@gmail.com', 2, 'Trash', 'Dummy', '1998-05-02', '2026-05-02', '2026-05-02')

update employee set salary=500 where department_id=1;

delete from employee where id=7;

select e.id, e.email, e.last_name, e.first_name, d.code, d.name from employee e
inner join department d
on e.department_id = d.id
where d.code = 'IT'

alter table project drop primary key;

INSERT INTO afpfc.project (code,name,date_started)
	VALUES ('IDS','Integrated Disbursement System','2026-05-02');
INSERT INTO afpfc.project (code,name,date_started)
	VALUES ('ECMS','Enhance Collection Management System','2026-05-02');
INSERT INTO afpfc.project (code,name,date_started)
	VALUES ('CCS','Collateral Claims System','2026-05-02');
INSERT INTO afpfc.project (code,name,date_started)
	VALUES ('DRMS','Digital Records Management System','2026-05-02');

select e.id, e.last_name, e.first_name, d.code, p.code, p.date_started from employee e
inner join employee_project ep
on e.id = ep.employee_id
inner join project p
on p.id = ep.project_id
inner join department d
on e.department_id = d.id