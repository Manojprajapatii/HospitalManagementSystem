create database hospital;
use hospital;

create table patients(id int auto_increment primary key, name varchar(255)not null,age int not null,gender varchar(10)not null);

create table DOCTORS(id int auto_increment primary key, name varchar(255)not null, specialization varchar(255) not null);

create table APPOINTMENTS(id int auto_increment primary key,patient_id int not null, doctor_id int not null, appointment_date date not null, 
foreign key(patient_id) references patients(id),foreign key(doctor_id) references doctors(id));

show tables;

insert into doctors(name,specialization)values("vijay jain","Physician");

insert into doctors(name,specialization)values("Ankit patil","NeuroSurgeon");

select * from doctors;

select *  from patients;

UPDATE patients
SET name = 'shyam', age= 20, gender="mail"
WHERE  id= 5;