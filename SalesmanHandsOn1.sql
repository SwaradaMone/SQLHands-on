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




