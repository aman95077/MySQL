create database if not exists college;
use college;

//parent tablee

create table teacher(
id int not null auto_increment ,
name varchar(20) not null,
course varchar(20) not null,
primary key(id)
);


insert into teacher(name, course) values
('aman','c'),('anku','python'),('shyam','java'),('rohit','c++'),('somya','html'),('bunni','javascript'),('gita','ruby');

select*from teacher;
drop table teacher;


//child tablee and for explaning natural join.

create table department(
d_id varchar(2) not null ,
dept varchar(20) not null,
id int,
primary key(d_id),
foreign key(id) references teacher(id)
on delete cascade
on update cascade
);
drop table department;
insert into department(d_id,dept,id)values
('D1','IT',2),('D2','CSE',2),('D3','IT',1),('D4','ME',4),('D5','CIVIL',7),('D6','BBA',6);


select*from department;

//find all name whose department is alloted

select name from teacher,department
where teacher.id=department.id;

select name from department natural join teacher;

create table placed(
id int,
d_id varchar(2),
years int not null,
foreign key (id) references teacher(id),
foreign key(d_id) references department(d_id)
on delete cascade
on update cascade
);

insert into placed(id,d_id,years) values
(1,'D2',4),(3,'D2',7),(4,'D4',5),(4,'D5',10),(5,'D6',1),(6,'D6',9);
select *from placed;

//give id of those teacher who is attending classes into atleast two department.

select t1.id  from placed as t1,
placed as t2 
where t1.id=t2.id and t1.d_id<>t2.d_id;


//by this you get 4 only two times because id 4 is attending clases two department.

//now updating in placed tables as id=3 for id=5 by this same id 6 is attending classes in both depaetment.

update placed
set id=3
where id=5;
select*from placed;



//again applying self join 


select t1.id  from placed as t1,
placed as t2 
where t1.id=t2.id and t1.d_id<>t2.d_id;


drop table placed;
  































































































































































































































































































































































































































,
