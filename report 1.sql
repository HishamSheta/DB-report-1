create database report1;
create table classroom
(building varchar (15),
roomNumber varchar (7),
capacity numeric (4,0),
primary key (building, roomNumber));

create table department
(deptName varchar (20),
building varchar (15),
budget numeric (12,2) check (budget > 0),
primary key (deptName));

create table course
(course_id varchar (8),
title varchar (50),
deptName varchar (20),
credits numeric (2,0) check (credits > 0),
primary key (course_id),
foreign key (deptName) references department
on delete set null);

create table instructor
(ID varchar (5),
name varchar (20) not null,
deptName varchar (20),
salary numeric (8,2) check (salary > 29000),
primary key (ID),
foreign key (deptName) references department
on delete set null);

create table section
(course_id varchar (8),
sec_id varchar (8),
semester varchar (6) check (semester in
('Fall', 'Winter', 'Spring', 'Summer')),
year numeric (4,0) check (year > 1701 and year < 2100),
building varchar (15),
roomNumber varchar (7),
time_slot_id varchar (4),
primary key (course_id, sec_id, semester, year),
foreign key (course_id) references course
on delete cascade,
foreign key (building, roomNumber) references classroom
on delete set null);

insert into classroom (building ,roomNumber, capacity)
values('packard','101','500')
insert into classroom (building ,roomNumber, capacity)
values('painter','514','10')
insert into classroom (building ,roomNumber, capacity)
values('taylor','3128','70')
insert into classroom (building ,roomNumber, capacity)
values('watson','100','30')
insert into classroom (building ,roomNumber, capacity)
values('watson','120','50')

select * from classroom

insert into department (deptName ,building, budget)
values('Biology','watson','90000')
insert into department (deptName ,building, budget)
values('comp.sci.','taylor','100000')
insert into department (deptName ,building, budget)
values('elec.eng.','taylor','85000')
insert into department (deptName ,building, budget)
values('finance','painter','120000')
insert into department (deptName ,building, budget)
values('history','painter','50000')
insert into department (deptName ,building, budget)
values('music','packard','80000')
insert into department (deptName ,building, budget)
values('physic','watson','70000')

select * from department

insert into course (course_id ,title ,deptName ,credits)
values('BIO-101','intro.to Biology','Biology','4')
insert into course (course_id ,title ,deptName ,credits)
values('BIO-301','Genetics','Biology','4')
insert into course (course_id ,title ,deptName ,credits)
values('BIO-399','computatioal Biology','Biology','3')
insert into course (course_id ,title ,deptName ,credits)
values('CS-101','intro.to computer science','Comp.sci.','4')
insert into course (course_id ,title ,deptName ,credits)
values('CS-190','Game Design','Comp.sci.','4')
insert into course (course_id ,title ,deptName ,credits)
values('CS-315','Robotics','Comp.sci.','3')
insert into course (course_id ,title ,deptName ,credits)
values('CS-319','imge processing','Comp.sci.','3')
insert into course (course_id ,title ,deptName ,credits)
values('CS-347','data system concept','Comp.sci.','3')
insert into course (course_id ,title ,deptName ,credits)
values('EE-181','intro. to digital systems ','elec.eng.','3')
insert into course (course_id ,title ,deptName ,credits)
values('FIN-201','investment Banking ','finance','3')
insert into course (course_id ,title ,deptName ,credits)
values('HIS-351','world history ','history','3')
insert into course (course_id ,title ,deptName ,credits)
values('MU-199','music video proudaction ','music','3')
insert into course (course_id ,title ,deptName ,credits)
values('PHY-101','physical principles ','physics','4')

select * from course