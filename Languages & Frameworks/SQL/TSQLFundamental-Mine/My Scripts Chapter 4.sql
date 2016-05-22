--Single valued subquery
	--For example, suppose that you need to query the Orders table in the TSQL2012 database and
	--return information about the order that has the maximum order ID in the table.

		--Alternative 1
		USE TSQL2012;
			DECLARE @maxid AS INT = (SELECT MAX(orderid) FROM Sales.Orders);
		SELECT orderid, orderdate, empid, custid
		FROM Sales.Orders
			WHERE orderid = @maxid;

		--Self-contained single value subquery alternative
		USE TSQL2012;

		SELECT orderid, orderdate, empid, custid
		FROM Sales.Orders
			WHERE orderid = (SELECT MAX(orderid) FROM Sales.Orders); 

--multivalued subqueries
	--For example, the following query returns order IDs of orders placed by employees with a last name
	--starting with D.

		--My solution
		USE TSQL2012;

		SELECT ORDS.orderid
		FROM Sales.Orders AS ORDS
			INNER JOIN HR.Employees AS EMPS
			ON ORDS.empid = EMPS.empid
		WHERE EMPS.lastname IN 
			(SELECT EMPS2.lastname 
			 FROM HR.Employees AS EMPS2
			 WHERE EMPS2.lastname LIKE N'D%'); -- initially I used WHERE EMPS2.lastname = N'D%'. We do not use '=' for patterns
											   --or anything we do not have an exact value

		--Correct solution
		SELECT orderid
		FROM Sales.Orders
			WHERE empid IN
				(SELECT E.empid
				 FROM HR.Employees AS E
				 WHERE E.lastname LIKE N'D%');

		--Join alternative
		SELECT O.orderid
		FROM HR.Employees AS E
			JOIN Sales.Orders AS O
			ON E.empid = O.empid
		WHERE E.lastname LIKE N'D%';

	--Note: you are likely to stumble into many other querying problems that you can solve with either subqueries or joins
		--You will revise when fitting

	--suppose that you need to write a query that returns orders placed by customers from the United States.

		SELECT orderid, orderdate
		FROM Sales.Orders
		WHERE custid IN (SELECT custid FROM Sales.Customers WHERE country = N'USA'); --customer ID is in the set of customer IDs of 
																					--customers from the United States

		--Good standard
		SELECT orderid, orderdate
		FROM Sales.Orders
		WHERE custid IN (SELECT CUSTS.custid 
						FROM Sales.Customers CUSTS 
						WHERE CUSTS.country = N'USA'); 

		SELECT custid, orderid, orderdate, empid
		FROM Sales.Orders
		WHERE custid IN
			(SELECT C.custid
			 FROM Sales.Customers AS C
			 WHERE C.country = N'USA');


--As with any other predicate, you can negate the IN predicate with the NOT logical operator. For
--example, the following query returns customers who did not place any orders.

		SELECT custid,companyname
		FROM Sales.Customers
		WHERE custid NOT IN (SELECT ORDS.custid 
						FROM Sales.Orders AS ORDS);		
--Note that best practice is to qualify the subquery to exclude NULL marks (THIS IS NOT DONE IN THE ABOVE QUERY)


--The last example in this section demonstrates the use of multiple self-contained subqueries in the
--same query—both single-valued and multivalued. Before I describe the task at hand, run the following
--code to create a table called dbo.Orders in the TSQL2012 database (for test purposes), and populate
--it with order IDs from the Sales.Orders table that have even-numbered order IDs.

	--My solution
	--create a table called dbo.Orders in the TSQL2012 database (for test purposes), and populate
	--it with order IDs from the Sales.Orders table that have even-numbered order IDs.

	USE TSQL2012;
	CREATE TABLE dbo.Orders
	(orderID int NOT NULL)
    INSERT INTO dbo.Orders(orderID) --its good standard to specify the columns here
		SELECT orderID 
			from Sales.Orders AS SALSORDRS 
		WHERE SALSORDRS.orderid%2 = 0;

	--Book solution
	USE TSQL2012;
	IF OBJECT_ID('dbo.Orders', 'U') IS NOT NULL DROP TABLE dbo.Orders;
	CREATE TABLE dbo.Orders(orderid INT NOT NULL CONSTRAINT PK_Orders PRIMARY KEY);

	INSERT INTO dbo.Orders(orderid)
		SELECT orderid
			FROM Sales.Orders
		WHERE orderid % 2 = 0;

	USE TSQL2012;
	SELECT orderID FROM dbo.Orders
	--The task at hand is to return all individual order IDs that are missing between the minimum and
	--maximum in the table

		--orderIDs missing between Minimum and Maximum orderID in the table
		--Generate complete list of orderIDs from Mininum to Maximum
		--Perform an LEFT OUTER JOIN between complete list and list in database

		use TSQL2012;
		SELECT n
		FROM Nums NOS
			LEFT OUTER JOIN dbo.Orders AS ORDRS 
			ON NOS.n = ORDRS.orderid
		WHERE (NOS.n >= (SELECT MIN(ORDRS.orderid) FROM dbo.Orders AS ORDRS) AND 
			  NOS.n <= (SELECT MAX	(ORDRS.orderid) FROM dbo.Orders AS ORDRS)) AND 
			  (ORDRS.orderid IS NULL) -- Need to retun n in NOS that didnt match[The ones that do not match will be NULL on the 
									  --non-preserved side]

		--Book solution : I like this one better, its more efficient[although the engine resolves/nagates performance issues]
		--It is more cleaner though

		SELECT n
		FROM dbo.Nums
			WHERE n BETWEEN (SELECT MIN(O.orderid) FROM dbo.Orders AS O)
			AND (SELECT MAX(O.orderid) FROM dbo.Orders AS O)
			AND n NOT IN (SELECT O.orderid FROM dbo.Orders AS O);

		--When you’re done, run the following code for cleanup.
		DROP TABLE dbo.Orders;

--CORRELATED SUBQUERIES
	
--For example, the query in Listing 4-1 returns orders with the maximum order ID for each customer.	

	--Get all the customers that made orders and their orders
	--Get the maximum orderid
	
	use TSQL2012;
	SELECT custid,MAX(orderid) AS MAXORDERID
	FROM Sales.orders AS ORDS
	GROUP BY custid

	--Better solution
	SELECT custid,orderid,orderdate,empid
	FROM Sales.orders
	WHERE orderid = (SELECT custid FROM Sales.Customers WHERE custid = )

	
