--INNER JOINS
	--Composite JOIN example
	----You need to write a query against the OrderDetails and OrderDetailsAudit tables that returns
	--information about all value changes that took place in the column qty. In each result row, you need
	--to return the current value from the OrderDetails table and the values before and after the change
	--from the OrderDetailsAudit table. You need to join the two tables based on a primary key–foreign key
	--relationship

	--Note: The column names are hypothetical,hence the errors refer to page 106 of book

		use TSQL2012
		go

		SELECT OD.qty, ODA.oldval, ODA.newval
		FROM OrderDetails AS OD
		INNER JOIN 
			OrderDetailsAudit AS ODA
				ON OD.orderid = ODA.orderid
				ON OD.productid = ODA.productid

		--Correct solution
		SELECT OD.orderid, OD.productid, OD.qty,
			ODA.dt, ODA.loginname, ODA.oldval, ODA.newval
		FROM Sales.OrderDetails AS OD
			JOIN Sales.OrderDetailsAudit AS ODA
				ON OD.orderid = ODA.orderid
				AND OD.productid = ODA.productid
		WHERE ODA.columnname = N'qty';


	--Multijoin
	--the following query joins the Customers and Orders tables to match customers with
	--their orders, and then it joins the result of the first join with the OrderDetails table to match orders
	--with their order lines.

		use TSQL2012
		go

		SELECT	CUS.custid,CUS.companyname, ORDRS.orderid, ORDRSDETAILS.productid, ORDRSDETAILS.qty
		FROM Sales.Customers AS CUS
			INNER JOIN
				Sales.Orders AS ORDRS
				ON CUS.custid = ORDRS.custid
					INNER JOIN
						Sales.OrderDetails AS ORDRSDETAILS
						ON ORDRS.orderid = ORDRSDETAILS.orderid

--OUTER JOINS

	--LEFT OUTER JOIN
	--The following query joins the
	--Customers and Orders tables based on a match between the customer’s customer ID and the order’s
	--customer ID, to return customers and their orders. The join type is a left outer join; therefore, the query
	--also returns customers who did not place any orders.
	
	use TSQL2012
	go

	SELECT CUS.custid,CUS.companyname ,ORDS.orderid
	FROM Sales.Customers AS CUS
		LEFT OUTER JOIN Sales.Orders AS ORDS
		ON CUS.custid = ORDS.custid

	--To return the outer rows (Customers who did not make orders)

	use TSQL2012
	go

	SELECT CUS.custid,CUS.companyname ,ORDS.orderid
	FROM Sales.Customers AS CUS
		LEFT OUTER JOIN Sales.Orders AS ORDS
		ON CUS.custid = ORDS.custid
	WHERE ORDS.orderid IS NULL -- When writing this part ensure that the column used is a Primary(this cannot be null),
							   --is a column defined as NOT NULL or is the joining COLUMN

	--ADAVANCED OUTER JOINS

		--For example, suppose
		--that you need to query all orders from the Orders table in the TSQL2012 database. You need to
		--ensure that you get at least one row in the output for each date in the range January 1, 2006 through
		--December 31, 2008. You don’t want to do anything special with dates within the range that have orders,
		--but you do want the output to include the dates with no orders, with NULL marks as placeholders
		--in the attributes of the order.

			--Create an aixulary table of dates
			use TSQL2012
			go

			CREATE TABLE AuxilaryNumbers
			( number int NULL);
			INSERT INTO AuxilaryNumbers
			values (0),(1),(2),(3),(4),(5),(6),(7),(8),(9);
			--Create two more in the tenths and hundredths.
			--Cross join them (Cartesian perooduct of all the 3 tables)

			--dbo.Nums is already there created for us in the TSQL dataabase

			--Correct solution

			--1. produce a sequence of all dates in the requested range
			use TSQL2012
			go

			SELECT DATEADD(day, n-1, '20060101') AS orderdate -- n-1 is used because we started counting from 1
			FROM dbo.Nums
			WHERE n <= DATEDIFF(day, '20060101', '20081231') + 1 --Ensures we produce the correct number of days in our data range
			ORDER BY orderdate;

				--Test
				SELECT DATEADD(day,1,'20060131')

				--DATAADD is clever enough to detect when to increment the day, month or year
				--For example look above: DATEADD was clever enough to detect the last day of a month and move on to the next month

			--2. Produce the result set, "all dates and their orders" including "dates without orders" 

			use TSQL2012
			go

			SELECT DATEADD(day, n-1, '20060101') AS orderdate, ORDRS.orderid, ORDRS.custid,ORDRS.empid 
			FROM dbo.Nums AS ORDRDATS
				LEFT OUTER JOIN Sales.Orders AS ORDRS
				ON DATEADD(day, n-1, '20060101') = ORDRS.orderdate
			WHERE n <= DATEDIFF(day, '20060101', '20081231') + 1 
			ORDER BY orderdate;
	
--CHAPTER 3 EXCERCISE

--1-1
--Write a query that generates five copies of each employee row.
	
	use TSQL2012
	go
	
	SELECT EMPS.empid, EMPS.firstname, EMPS.lastname		
	FROM HR.Employees AS EMPS
		CROSS JOIN Nums AS NOS --Cartesian product between the numbers and the employees
	WHERE NOS.n <= 5 -- Only return the 5 of all the cartesian products per employee
	ORDER BY empid

--1-2 (Optional, Advanced)
--Write a query that returns a row for each employee and day in the range June 12, 2009 through
--June 16, 2009.

	--Get all the days in the range
	--Cartesian product of the employees to the days
	use TSQL2012
	go

	SELECT CUSTS.custid,DATEADD(day,NoOFDays.n -1,'20090612') AS dt --Get all the days in the range
																			  --Add to the days(defined by the NoOFDays.n) in the dat
																			  --[NoOFDays.n -1 becaause we start counting from 1]								   
	FROM Sales.Customers AS CUSTS
		CROSS JOIN Nums AS NoOFDays
	WHERE NoOFDays.n <= DATEDIFF(day,'20090612','20090616') + 1 				  -- Ensuring days in range do no exceed my auxilary numbers
		AND CUSTS.custid <= 9																		  --Note: Its the Righ date - the left date
																				  --+1 is to ensure we get the last day
	ORDER BY custid

	SELECT * from Sales.Customers

--2
--Return United States customers, and for each customer return the total number of orders and total
--quantities.
	use TSQL2012
	go

	SELECT CUSTS.custid, COUNT (ORDRS.orderid) AS numOfOrders, SUM(ORDRSDETAILS.qty) AS TotalQuantity
	FROM Sales.Customers AS CUSTS
		INNER JOIN Sales.Orders AS ORDRS
		ON CUSTS.custid = ORDRS.custid
			INNER JOIN Sales.OrderDetails AS ORDRSDETAILS
				ON ORDRS.orderid = ORDRSDETAILS.orderid
	WHERE CUSTS.country = 'USA'
	GROUP BY CUSTS.custid;

	SELECT C.custid, COUNT(DISTINCT O.orderid) AS numorders, SUM(OD.qty) AS totalqty -- Note the  COUNT(DISTINCT O.orderid). This is because the
												--orderid is repeated per order line in order details. WE only want the one occurence.
	FROM Sales.Customers AS C
		JOIN Sales.Orders AS O
		ON O.custid = C.custid
			JOIN Sales.OrderDetails AS OD
			ON OD.orderid = O.orderid
	WHERE C.country = N'USA'
	GROUP BY C.custid;

--3
--Return customers and their orders, including customers who placed no orders.

	use TSQL2012
	go

	SELECT CUSTS.custid, CUSTS.companyname, ORDRS.orderid, ORDRS.orderdate
	FROM Sales.Customers AS CUSTS
		LEFT OUTER JOIN Sales.Orders AS ORDRS
		ON CUSTS.custid = ORDRS.custid

--4
--Return customers who placed no orders.
	use TSQL2012
	go

	SELECT CUSTS.custid, CUSTS.companyname
	FROM Sales.Customers AS CUSTS
		LEFT OUTER JOIN Sales.Orders AS ORDRS
		ON CUSTS.custid = ORDRS.custid
	WHERE ORDRS.orderid IS NULL

--5
--Return customers with orders placed on February 12, 2007, along with their orders.

	use TSQL2012
	go

	SELECT CUSTS.custid, CUSTS.companyname, ORDRS.orderdate, ORDRS.orderid
	FROM Sales.Customers AS CUSTS
		LEFT OUTER JOIN Sales.Orders AS ORDRS
		ON CUSTS.custid = ORDRS.custid
	WHERE ORDRS.orderdate = '20070212';

--6 (Optional, Advanced)
--Return customers with orders placed on February 12, 2007, along with their orders. Also return customers
--who didn’t place orders on February 12, 2007.

	use TSQL2012
	go

	SELECT CUSTS.custid, CUSTS.companyname, ORDRS.orderdate, ORDRS.orderid
	FROM Sales.Customers AS CUSTS
		LEFT OUTER JOIN Sales.Orders AS ORDRS
		ON CUSTS.custid = ORDRS.custid AND ORDRS.orderdate = '20070212' -- Simply move the date filter 
	--ORDER BY CASE orderdate WHEN '20070212' THEN 0 ELSE 1 END;
	
--7 (Optional, Advanced)
--Return all customers, and for each return a Yes/No value depending on whether the customer placed
--an order on February 12, 2007.

	--INVESTIGATE AGAIN

	use TSQL2012
	go

	SELECT DISTINCT CUSTS.custid, CUSTS.companyname,
		CASE 
			WHEN ORDRS.orderdate = '20070212' THEN 'Yes'
			ELSE 'No'
		END AS 'HasOrderOn20070212'
	FROM Sales.Customers AS CUSTS
		 LEFT OUTER JOIN Sales.Orders AS ORDRS
		ON CUSTS.custid = ORDRS.custid 
	--Correct solution

	SELECT DISTINCT C.custid, C.companyname,
		CASE WHEN O.orderid IS NOT NULL THEN 'Yes' 
		ELSE 'No' 
		END AS [HasOrderOn20070212]
	FROM Sales.Customers AS C
		LEFT OUTER JOIN Sales.Orders AS O
		ON O.custid = C.custid AND O.orderdate = '20070212';

	


		
	


		


