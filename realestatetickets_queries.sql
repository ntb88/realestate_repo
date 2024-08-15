use realestateDB; 


-- 1 

show tables; 

select * from Transactions; 
select * from Properties; 
select * from Agents; 
select * from Clients; 

select p.city, p.state, a.firstName, a.LastName 
from Properties P 
inner join 
Agents A
using(AgentID); 

select T.TransactionID, P.address, P.city, P.state
from Transactions T 
INNER JOIN 
Properties P 
USing(PropertyID);

select P.PropertyID, P.Address, P.City, P.State, P.ListingPrice 
From Properties P 
Inner Join Agents A
Using(AgentID)
where AgentID = 3;

-- switch up these tables orders to see if they are working 
-- it wasnt working when i did clients first 
select c.FirstName, c.LastName, c.Email, p.Address, p.City, p.State 
From Transactions t 
Inner Join Clients c using(ClientID)
inner join properties p using(PropertyID);

-- tickets 2 
-- left join 
select * from agents; 

select a. agentid, a.FirstName, a.LastName, a.Email, a.PhoneNumber, p.address, p.city, p.state 
from     Agents a   
left join     Properties p    
using(AgentID); 


select * from properties; 
select p.propertyid, p.address, p.city, p.state, p.ListingPrice, t.TransactionID, t.SalePrice 
from Properties p 
left join Transactions t 
using(PropertyID); 

select c.FirstName, c.LastName, c.Email, c.PhoneNumber, p.Address, p.City, p.State
from Clients c 
Left join Transactions t using (ClientID) 
left join Properties p using (PropertyID); 

select * from PropertyTypes; 

select pt.TypeName, p.address, p.city, p.state 
from PropertyTypes pt 
left join Properties p 
using (TypeID);



-- Right join 
-- ticket 4 


 -- list all properties 
 select * from properties; 
 
select p.propertyID, p.address, p.city, p.state, p.listingPrice, a.firstName, a.lastName, a.email
from Agents a 
right join properties p using(AgentID); 

select * from Transactions; 

select t.TransactionID, t.saleprice, t.saledate, c.firstname, c.lastname, c.email, c.phonenumber
from  Clients c     
right join  Transactions t 
using(ClientID); 

select pt.typename, p.address, p.city, p.state 
from Properties p
right join PropertyTypes pt 
using(Typeid); 

select* from Clients; 

select  c.firstname, c.lastname, c.email, c.phonenumber, t.transactionid, t.saledate 
from Transactions t 
right join Clients c 
using(ClientID); 

-- Cross join 
-- ticket 5 

select a.firstname, a.lastname, a.email, p.address, p.city, p.state, p.listingprice 
from Agents a 
CrOSS join Properties p 
order by a.firstname; 

select c.firstname, c.lastname, c.email, p.address, p.city, p.state, p.listingprice 
from Clients c 
cross join Properties p
order by c.firstname; 

select  pt.typename, p.address, p.city, p.state, p.listingprice
from PropertyTypes pt 
cross join Properties p
order by pt.typename; 

select a.firstname, a.lastname, a.email, c.firstname, c.lastname, c.email 
from Agents a 
CROSS join Clients c
order by a.firstname; 





