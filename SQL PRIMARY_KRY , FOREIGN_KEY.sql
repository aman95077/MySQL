create database if not exists university;
use university;
create table course(
c_id int not null  auto_increment,
c_name varchar(20)not null,
primary key(c_id)
);

insert into course (c_name) values
('web dev'),('ai'),('me'),('data analystics'),('haking'),('app dev');

create table teacher(
id int not null auto_increment primary key,
name varchar(20) not null,
course int not null,
foreign key (course) references course(c_id)
on update cascade
on delete cascade
); 

insert into teacher(name, course) values
('aman',2),('anku',3),('shyam',6),('rohit',5),('somya',3),('bunni',3),('gita',1);

select*from course;
select*from teacher;
drop table teacher;
drop table course;

update course 
set c_id =12
where c_id=1;

update course
set c_id=302,c_name='ml'
where c_id=3;