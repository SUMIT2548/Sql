-- Foreign Keys in MySQL
-- A foreign key is a column that creates a link between two tables. It ensures that the value in one table must match
--               a value in another table.

use user_details;
create table Empaddress 
(
  id int auto_increment primary key,
  Emp_id int,
  street varchar(200) not null ,
  city varchar(120) not null,
  state varchar(100) not null, 
  pincode int,
  constraint forkey foreign key(Emp_id) references Employees(Emp_id)
); 

select * from empaddress;

INSERT INTO empaddress (Emp_id, street, city, state, pincode)
VALUES
(1, '221B MG Road', 'Mumbai', 'Maharashtra', '400001'),
(22, '14 Park Street', 'Kolkata', 'West Bengal', '700016'),
(3, '32 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
(24, '5 North Usman Road', 'Chennai', 'Tamil Nadu', '600017'),
(5, '17 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001'),
(6, '55 Banjara Hills', 'Hyderabad', 'Telangana', '500034'),
(7, '88 Connaught Place', 'Delhi', 'Delhi', '110001'),
(8, '10 MG Marg', 'Dehradun', 'Uttarakhand', '248001'),
(9, '23 Brigade Road', 'Bengaluru', 'Karnataka', '560025'),
(10, '45 Marine Drive', 'Mumbai', 'Maharashtra', '400020'),
(11, '67 Ashoka Road', 'Delhi', 'Delhi', '110001'),
(12, '89 MG Road', 'Pune', 'Maharashtra', '411001'),
(13, '12 Brigade Road', 'Bengaluru', 'Karnataka', '560025'),
(14, '34 Park Street', 'Kolkata', 'West Bengal', '700016'),
(15, '56 Connaught Place', 'Delhi', 'Delhi', '110001'),
(16, '78 Marine Drive', 'Mumbai', 'Maharashtra', '400020'),
(18, '11 North Usman Road', 'Chennai', 'Tamil Nadu', '600017'),
(19, '33 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
(20, '22 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001'),
(21, '221B MG Road', 'Mumbai', 'Maharashtra', '400001'),
(23, '14 Park Street', 'Kolkata', 'West Bengal', '700016'),
(25, '32 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
(27, '5 North Usman Road', 'Chennai', 'Tamil Nadu', '600017'),
(28, '17 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001'),
(26, '55 Banjara Hills', 'Hyderabad', 'Telangana', '500034'),
(29, '88 Connaught Place', 'Delhi', 'Delhi', '110001');

select * from empaddress;

-- Adding a Foreign Key Later (Using ALTER)
-- alter table empaddress add constraint forkey foreign key(emp_id) references employees(Emp_id);

-- Drop the existing foreign key
alter table empaddress drop foreign key forkey;

-- Adding ON DELETE Action
alter table empaddress add constraint forkey foreign key(emp_id) references employees(emp_id) on delete cascade;

select * from empaddress;

-- ON DELETE Option Behavior
-- CASCADE    -   Deletes all related rows in child table
-- SET NULL   -   Sets the foreign key to NULL in the child table
-- RESTRICT   -   Prevents deletion of parent if child exists (default)
