DROP DATABASE project;

CREATE DATABASE project;

USE project;

CREATE TABLE admin ( password BLOB NOT NULL )ENGINE = InnoDB;

INSERT INTO admin VALUES ( SHA1('Mypasswordis2425'));

CREATE TABLE enroll_for (degree varchar(5) NOT NULL, course varchar(20) NOT NULL) ENGINE = InnoDB;

/*
CREATE TABLE enroll_for ( degree varchar(5) NOT NULL, course varchar(15) NOT NULL, CONSTRAINT CHK_degree CHECK (degree IN ( 'B.A.' , 'B.Sc' , 'B.Com' , 'M.A.' , 'M.Sc' , 'M.Com' )), CONSTRAINT CHK_course CHECK (course IN ( 'English' , 'Psychology' , 'Economics' , 'History' , 'Sociology' , 'Hindi' , 'Computer Science' , 'Computer Applications' , 'IMCA' , 'Data Science' , 'Physics' , 'Chemistry' , 'Biotechnology' , 'Economics' , 'Taxation' , 'Banking' )));
*/

CREATE TABLE student ( roll_no integer PRIMARY KEY, name varchar(50) NOT NULL, password BLOB NOT NULL, email_id varchar(255) NOT NULL, degree varchar(5) NOT NULL, course varchar(20) NOT NULL, year integer NOT NULL, is_approved BOOLEAN DEFAULT false,  CONSTRAINT CHK_year CHECK (year BETWEEN 1 AND 3)) ENGINE = InnoDB;

INSERT INTO student (roll_no, name, password, email_id, degree, course, year ) values (1, 'Gaurav Shukla', SHA1('gaurav'), 'gauravcsshukla999@gmail.com', 'M.Sc', 'Comp. Appl.', 2);
INSERT INTO student (roll_no, name, password, email_id, degree, course, year ) values (2, 'Vaibhav Baviskar', SHA1('vaibhav'), 'vaibhavsbaviskar999@gmail.com', 'M.Sc', 'Comp. Appl.', 2);

CREATE TABLE faculty ( name varchar(20) NOT NULL, username varchar(20) NOT NULL, password BLOB NOT NULL, email_id varchar(255) NOT NULL, degree varchar(5) NOT NULL, course varchar(20) NOT NULL, year integer NOT NULL, subject varchar(20) primary key, is_approved BOOLEAN DEFAULT false, CONSTRAINT CHK_faculty_year CHECK (year BETWEEN 1 AND 3)) ENGINE = InnoDB;

insert into faculty ( name, username, password, email_id, degree, course, year, subject ) values ( 'Tushar Deshmukh', 'tushar.deshmukh881', SHA1('tushar'), 'tushardeshmukh@gmail.com', 'M.Sc', 'Comp. Appl.', 2, 'Data Science');
