CREATE DATABASE school;
USE school;

CREATE TABLE students (
	student_id int auto_increment,
    first_name varchar(40),
    last_name varchar(40),
    Age int,
    primary key (student_id)
);

CREATE TABLE classes (
	class_id int auto_increment,
    subject varchar(40),
    description varchar(40),
    level int,
    primary key (class_id)
);

CREATE TABLE enrollment (
	enrollment_id int auto_increment,
    student_id int,
    class_id int,
    primary key (enrollment_id),
    foreign key (student_id) references students(student_id),
    foreign key (class_id) references classes(class_id)
);

insert into students 
values (NULL, 'Sean', 'Jackson', 32), (NULL, 'Tim', 'Rogers', 45), (NULL, 'Carey', 'Sue', 40), (NULL, 'Gary', 'Coleman', 70);

insert into classes 
values (NULL, 'history', 'learn dates', 1), (NULL, 'math', 'learn equations', 1), (NULL, 'science', 'learn equations', 1), (NULL, 'geography', 'for middle school babies', 1);

insert into enrollment 
values (NULL, 1, 5), (NULL, 1, 6), (NULL, 2, 5), (NULL, 2, 7), (NULL, 3, 7), (NULL, 3, 8), (NULL, 4, 6), (NULL, 4, 7);

select students.first_name, students.last_name, classes.subject
from enrollment
join students on enrollment.student_id = students.student_id
join classes on enrollment.class_id = classes.class_id;