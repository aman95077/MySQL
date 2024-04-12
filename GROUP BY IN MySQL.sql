use company;

create table student(
id int not null auto_increment,
name varchar(20) not null,
age int not null check(age>=18),
city varchar(20) not null,
primary key(id)
);
insert into student(name,age,city) values
('aman',19,'patna'),('anku',21,'patna'),('rishu',21,'mumbai'),('nitu',25,'delhi'),
('somya',23,'delhi');

select* from student;


select city,count(id)
from student
where  city REGEXP  '^p|i$'
group by city
having  max(age)>20
order by count(id);


select city,count(id)
from student
where city regexp '[p]a|^d|i$'
group by city
having max(age)>20
order by count(id) desc;