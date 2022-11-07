use assignment_6;
create table worker (worker_id int(10),first_name varchar(20),last_name varchar(10),salary int(10),joining_date datetime,department varchar(10)); 
insert into worker values(001,'Momota','Didi',100000,'2014-02-20 09:00:00','HR');
insert into worker values(002,'Modi','Da',70000,'2014-06-11 09:00:00','Admin');
insert into worker values(003,'Kakajibonfaka','Khelahobe',300000,'2014-02-20 09:00:00','HR');
insert into worker values(004,'Murturswami','Iyer',500000,'2014-02-20 09:00:00','Admin');
insert into worker values(005,'Kesta','Da',500000,'2014-06-11 09:00:00','Admin');
insert into worker values(006,'Chagla','Da',80000,'2014-06-11 09:00:00','Account');
insert into worker values(007,'Pagla','Di',270000,'2014-01-20 09:00:00','Account');
insert into worker values(008,'Netaji','Bose',50000,'2014-06-09 09:00:00','Admin');
select * from worker;
create table bonus(Worker_Ref_Id int(10),Bonus_date datetime,Bonus_Amount int(20));
insert into bonus values(1,'2016-02-20 00:00:00',5000);
insert into bonus values(2,'2016-06-11 00:00:00',5000);
insert into bonus values(3,'2016-02-20 00:00:00',5000);
insert into bonus values(1,'2016-02-20 00:00:00',5000);
insert into bonus values(2,'2016-06-11 00:00:00',5000);
create table title(Worker_Ref_Id int(10),Worker_Title varchar(20),Affected_from datetime);
insert into title values(1,'Manager','2016-02-20 00:00:00');
insert into title values(2,'Executive','2016-06-11 00:00:00');
insert into title values(8,'Executive','2016-06-11 00:00:00');
insert into title values(5,'Manager','2016-06-11 00:00:00');
insert into title values(4,'Asst. Manager','2016-06-11 00:00:00');
insert into title values(7,'Executive','2016-06-11 00:00:00');
insert into title values(6,'Lead','2016-06-11 00:00:00');
insert into title values(3,'Lead','2016-06-11 00:00:00');
select first_name as Worker_Firstname from worker;
select substring(first_name,1,3) from worker;
select position("A" in first_name) from worker where first_name="Amitabh";
select instr(first_name,"A") from worker where first_name="Amitabh";
select concat(first_name,' ',last_name) as compile_name from worker;
select * from worker order by first_name ASC,department DESC;
select * from worker where first_name like "%a%";
select * from worker where first_name like "%a";
select * from worker where salary between 100000 and 500000;
select count(*) from worker where department="Admin";
select department,count(worker_id) as No_of_workers from worker group by department order by No_of_workers DESC;
select distinct w.first_name,t.worker_title from worker w insert join title t on w.worker_id=t.Worker_Ref_ID and t.worker_title in ('Manager');
select * from worker where MOD(worker_id,2)<>0;
select * from worker MINUS select * from title;
select * from worker order by salary DESC limit 10;
select distinct w.worker_id,w.first_name,w.salary from worker w, worker w1 where w.salary and w.worker_id!=w1.worker_id;
select department,count(department) as 'number of workers' from worker group by department;
select t.department,t.first_name,t.salary from (select max(salary) as totalsalary,department from worker group by department) as tempnew inner join worker t on tempnew.department=t.department and tempnew.totalsalary=t.salary; 
select department,sum(salary) from worker group by department;