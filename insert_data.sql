
-- ------Adding Customers ------ --
SELECT addcustomer('Jerry','Themouse');
SELECT addcustomer('Spongebob', 'Squarepants');
SELECT addcustomer('Tom', 'Thecat');
SELECT addcustomer('Fred', 'Flinstone');
SELECT addcustomer('Homer', 'Simpson'); 
SELECT addcustomer('Velma','Dinkley')

Select * 
from customer
------------------
-- ------Adding Salespersons ------ --
SELECT addsalesperson('Eugene','Crabs');
SELECT addsalesperson('Professor','Utonium');
SELECT addsalesperson('Catdog','Dogcat');
SELECT addsalesperson('George','Jetson');
SELECT addsalesperson('Bugs','Bunny');

select * 
from salesperson
------------------
-- ------Adding Mechanics ------ --
select addmechanic('Fixit','Felix');
select addmechanic('Wreckit','Ralph');
select addmechanic('Popeye','Sailorman');

select * 
from mechanic;
------------------
-- ------Adding Vehicles ------ --
select addvehicle('12345','Patty', 'Wagon', 'true', 2);
select addvehicle('12346','Cave', 'Mobile', 'true', 5);
select addvehicle('12347','Mystery','Machine', 'true', 8);

select * 
from vehicle;

------------------
-- ------Adding SalesInvoices ------ --
select addsalesinvoice('2','3','1');
select addsalesinvoice('5','4','1');
select addsalesinvoice('8','5','1');

select * 
from sales_invoice

------------------
-- ------Adding Jobs ------ --
select addjob('oil change');
select addjob('tire changeover');
select addjob('break fluid'); 

select * 
from job
------------------
-- ------Adding ServiceTicket ------ --
select addserviceticket(1, 2, 3, 1);
select addserviceticket(2, 6, 4, 1);

select * 
from service_ticket;

------------------
-- ------Adding ServiceTeam ------ --
select addserviceteam(1, 1, 1);
select addserviceteam(2, 2, 1);

select * 
from service_team


