create table student(
id int not null,
name varchar(20) not null,
marks int not null,
dob datetime not null,
city varchar(20) not null
);
insert into student(id ,name,marks,dob,city)values
(1,'aman',99,'2003-07-18 04:30:40','patna'),
(2,'anku',96,'2000-01-08 07:15:45','mumbai');
select *from student;



                                            //   DATE FUNCTIONS
                                            
                                            
                                            

select current_date();              //RETURN TODAY DATE


SELECT SYSDATE();
SELECT NOW();             //BOTH RETURN CURRENT SYSTEM DATE AND TIME


SELECT DATE(DOB) FROM STUDENT;    //RETURN WITHOUT TIME

SELECT MONTH(DOB) FROM STUDENT;
SELECT YEAR(DOB) FROM STUDENT;
SELECT DAY(DOB) FROM STUDENT;
SELECT DAYNAME(DOB) FROM STUDENT;




SELECT EXTRACT(MONTH FROM DOB) FROM STUDENT;       //THIS SYNTAX WIDELY USED;
SELECT EXTRACT(MINUTE FROM DOB) FROM STUDENT;


SELECT ADDDATE(DOB, INTERVAL  10 MONTH) FROM STUDENT;
SELECT SUBDATE(DOB ,INTERVAL 2 YEAR) FROM STUDENT;

SELECT DATEDIFF(DATE(DOB),'01-01-30') FROM STUDENT;

SELECT DATE_FORMAT(DOB,'%d/%m/%Y')FROM STUDENT;
 SELECT DATE_FORMAT(DOB,'%e/%c/%Y')FROM STUDENT;
 
 
 
                            //TIME_FUNCTIONS
 
 select current_time();
 select current_timestamp();
 select localtime();
 select localtimestamp();
 
 select extract(second from dob)from student;
 
 select addtime(dob, '02:00:00')from student;
 
 select subtime(dob,'04:00:00')from student;
select timestamp('2003-07-18' ,' 07:15:45') as datetime;

select time_format(dob,'%H-%i-%s %p')from student;
  
  
  

                                    //STRING FUNCTIONS
             
             
SELECT UPPER(NAME) AS NAME FROM STUDENT A;      

SELECT NAME,CHARACTER_LENGTH(NAME) AS NAME FROM STUDENT;        
SELECT CONCAT_WS('-',NAME,DATE(DOB),MARKS,CITY) AS DETAIL FROM STUDENT;

SELECT POSITION('A' IN NAME) AS 'POS_A' FROM STUDENT;
SELECT LOCATE('A',NAME,2) AS 'POS-A-2' FROM STUDENT;

SELECT substring(NAME,-4,2)AS '2-WORD' FROM STUDENT;

SELECT substring_index('WWW.INSTAGRAM.COM','.',2);

SELECT LTRIM('                                            AMAN                                      ');
SELECT RTRIM('                                            AMAN                                      ');
SELECT TRIM('                                            AMAN                                      ');

