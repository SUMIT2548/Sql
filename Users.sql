use statersql;

-- MySQL Constraints
-- UNIQUE Prevents duplicate values
-- NOT NULL Ensures value is not NULL
-- CHECK Restricts values using a condition
-- DEFAULT Sets a default value
-- PRIMARY KEY Uniquely identifies each row
-- AUTO_INCREMENT Automatically generates unique numbers

create table  Users 
(
Id int primary key auto_increment,
Username varchar(100) not null , 
Email varchar(100) not null unique,
Gender enum( 'male','female','others'),
User_salary decimal(10,2),
Date_of_birth date ,
create_id timestamp default current_timestamp
); 

select * from users ;

-- Add UNIQUE using ALTER TABLE
ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE (email);

-- Change an existing column to NOT NULL:
alter table users modify column username varchar(150) not null ;

-- CHECK Constraint
alter table users Add constraint Check_date check(Date_of_birth > '1990-01-01');

insert into users (username, email, gender, date_of_birth , user_salary) values 
('Ananya', 'ananya@example.com', 'Female', '1989-11-23', 72000.00); -- Check constraint 'Check_date' is violated. so value no added in table. 

-- DEFAULT Constraint
-- Add DEFAULT using ALTER TABLE
alter table users  add column is_active boolean default true ;

