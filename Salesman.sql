Create database SalesmanDb
use SalesmanDB
Create table Salesman
(
	Salesman_id numeric,
	Salesman_Name varchar(30),
	City varchar(15),
	Commission Decimal(5,2)
	primary key(Salesman_id)
)
insert into Salesman values(5001,'James Hoog','New York',0.15)
insert into Salesman values(5002,'Nail Knite','Paris',0.13)
insert into Salesman values(5005,'Pit Alex','London',0.11)
insert into Salesman values(5006,'Mc Lyon','Paris',0.14)
insert into Salesman values(5007,'Paul Adam','Rome',0.13)
insert into Salesman values(5003,'San Jose','',0.12)

update Salesman set City='New York' where Salesman_id=5001
update Salesman set City='San Jose',Salesman_Name='Lauson Hen' where Salesman_id=5003
Select * from Salesman

Create table Orders
(
	Order_No numeric,
	Purch_Amt Decimal(8,2),
	Order_Date Date,
	Customer_id numeric,
	Salesman_id numeric
	primary key(Order_No)
)
insert into Orders values(70001,150.5,'2012-10-05',3005,5002)
insert into Orders values(70009,270.65,'2012-09-10',3001,5005)
insert into Orders values(70002,65.26,'2012-10-05',3002,5001)
insert into Orders values(70004,110.5,'2012-08-17',3009,5003)
insert into Orders values(70007,948.5,'2012-09-10',3005,5002)
insert into Orders values(70005,2400.6,'2012-07-27',3007,5001)
insert into Orders values(70008,5760,'2012-09-10',3002,5001)
insert into Orders values(70010,1983.43,'2012-10-10',3004,5006)
insert into Orders values(70003,2480.4,'2012-10-10',3009,5003)
insert into Orders values(70012,250.45,'2012-06-27',3008,5002)
insert into Orders values(70011,75.29,'2012-08-17',3003,5007)
insert into Orders values(70013,3045.6,'2012-04-25',3002,5001)
Select * from Orders

Create table Customer
(
	Customer_id numeric,
	Customer_Name varchar(30),
	City varchar(15),
	Grade numeric,
	Order_No numeric,
	Purch_Amt Decimal(8,2),
	Salesman_id numeric
	primary key(Customer_id)
)
Alter table Customer drop column Order_No,Purch_Amt,Order_Date
insert into Customer values(3002,'Nick Rimando','New York',100,5001)
insert into Customer values(3007,'Brad Davis','New York',200,5001)
insert into Customer values(3005,'Graham Zusi','California',200,5002)
insert into Customer values(3008,'Julian Green','London',300,5002)
insert into Customer values(3004,'Fabian Johnson','Paris',300,5006)
insert into Customer values(3009,'Geoff Cameron','Berlin',100,5003)
insert into Customer values(3003,'Jozy Altidor','Moscow',200,5007)
insert into Customer (Customer_id,Customer_Name,City,Salesman_id)values(3001,'Brad Guzan','London',5005)

Select * from Salesman
---1.Write a query to display the columns in a specific order like order date, salesman id, order number and purchase amount from for all the orders
select Order_Date,Salesman_id,Order_No from Orders

---2. write a SQL query to find the unique salespeople ID. Return salesman_id.
Select distinct Salesman_id from Salesman

--3.write a SQL query to find the salespeople who lives in the City of 'New York';Paris&#39; 
--Return salesperson&#39;s name, city
Select Salesman_Name, City from Salesman where City='New York' or City='Paris' or City='Berlin'

--4.write a SQL query to find the orders, which are delivered by a salesperson of ID. 5001. Return ord_no, ord_date, purch_amt
Select Order_No,Order_Date,Purch_Amt from Orders where Salesman_id=5001

--5..write a SQL query to find all the customers in ‘New York’ city who have agrade value above 100. Return customer_id, cust_name, city, grade, and Salesman_id.
Select Customer_id, Customer_Name , City,Grade , Salesman_id from Customer where  city='New York' and grade>100

--6.write a SQL query to find the details of those salespeople whose commissions range from 0.10 to0.12. Return salesman_id, name, city, and commission
Select * from Salesman where Commission between 0.10 and 0.12

--7.write a SQL query to calculate total purchase amount of all orders. Return total purchase amount.
select sum(Purch_Amt) from Orders
SELECT SUM(Purch_Amt)
FROM Customer
Select * from Customer
Select * from Orders

--8.write a SQL query to calculate average purchase amount of all orders.
--Return average purchase amount.
Select avg(Purch_Amt) from Orders

--9.write a SQL query to count the number of unique salespeople. Return number of salespeople.
Select count(Salesman_id) from Salesman

--10.write a SQL query to find the highest purchase amount ordered by each customer. Return customer ID, maximum purchase amount
SELECT Customer_id, MAX(Purch_Amt) 
FROM Orders 
GROUP BY Customer_id;

--11. write a SQL query to find the highest purchase amount ordered by each customer on a particular date. Return, order date and highest purchase amount
SELECT Customer_id,Order_Date,MAX(Purch_Amt) FROM Orders GROUP BY Customer_id,Order_Date;


--12.write a SQL query to find the highest purchase amount on 2012-08-17 by each salesperson. Return salesperson ID, purchase amount.
Select Salesman_id, max(Purch_Amt) from Orders where Order_Date='2012-08-17' group by Salesman_id

--13.write a SQL query to find the salesperson and customer who belongs to same city. Return Salesman, cust_name and city.
select Salesman_id, , City where 
SELECT Salesman_Name AS "Salesman",
Customer.Customer_Name, Customer.City 
FROM Salesman,Customer 
WHERE Salesman.City=Customer.City;

--14. write a SQL query to find those orders where order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city
Select Orders.Order_No, Orders.Purch_Amt, Customer.Customer_Name, Customer.City from Orders,Customer
where Purch_Amt between 500 and 2000

--15.write a SQL query to find those salespersons who received a commission from the company more than 12%. Return Customer Name, customer city, Salesman, commission
Select Customer.Customer_Name,Customer.City, Salesman.Salesman_Name, Salesman.Commission from Customer, Salesman where Salesman.Commission>0.12




