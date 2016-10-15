USE TSQL2012
--WINDOWS
	--OVER
		SELECT empid,ordermonth,val --val here was defined as the value of the order/sale...
			   ,SUM(val) OVER (PARTITION BY empid --All rows with the same empid
							   ORDER BY ordermonth ASC
							   ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS runval--filter [subset of the window]
							   --NB: All the above are optional	  
		--In theory I should be able to add another function operating on a different
		--window [See now the diffference to GROUP BY]
		FROM Sales.EmpOrders

		--Test

		SELECT empid,ordermonth,val --val here was defined as the value of the order/sale...
			   ,SUM(val) OVER (PARTITION BY empid --All rows with the same empid
							   ORDER BY ordermonth ASC
							   ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) --filter [subset of the window]) AS runval

		FROM Sales.EmpOrders
	
		SELECT empid,ordermonth,val --val here was defined as the value of the order/sale...
			   ,SUM(val) OVER (PARTITION BY empid --All rows with the same empid
							   ORDER BY ordermonth ASC
							   ) --filter [subset of the window]) AS runval
		FROM Sales.EmpOrders
	
	--WINDOW FUNCTIONS
		--Ranking window functions
			--Example
				SELECT orderid,custid,val,
					ROW_NUMBER()   OVER (ORDER BY val ASC)  AS rownum,
					RANK()         OVER (ORDER BY val ASC)  AS [rank],
					DENSE_RANK()   OVER (ORDER BY val ASC)  AS [dense_rank],
					NTILE(100)     OVER (ORDER BY val)      AS [ntile]
				FROM Sales.ordervalues
				ORDER BY val;

			--Assign row numbers to each row in per empid

			SELECT empid,hiredate,lastname, 
				ROW_NUMBER() OVER (PARTITION BY empid --Incorrect, I used a Primary key
													  --(its suppose to be unique for each row), hence I get all the empid and a rank of 1
								   ORDER BY hiredate DESC) AS ExperienceRank
			FROM HR.Employees

			
			SELECT orderid, orderid, orderdate,
				ROW_NUMBER() OVER (PARTITION BY custid --Do not partition by the primary key(All are unique after all) 
								   ORDER BY orderdate DESC) AS OrderRank
			FROM Sales.Orders
			ORDER BY custid --orderid : creates amibiquity(there are two results sets after all)

		--ROW_NUMBER() and DISTINCT
		--NB: DISTINCT is evaluated after window functions.
		/*In the example below, DISTINCT is useless because after ROW_NUMBER executes
		all the rows will uniquE(i.e the unique sequential row number assigned by ROW_NUMER()*/
		--best practice is to not use DISTINCT with ROW_NUMBER()
		SELECT DISTINCT val,ROW_NUMBER() OVER(ORDER BY val) AS rownum
		FROM Sales.OrderValues

		--if we actually wanted to do this use GROUPS

		--Offset window functions
			--LAG and LEAD
			
			--Per customer
			--Orderinformation from OrderValues view
			--Per order return 
					--the previous order
					--the next order
		SELECT custid,orderid,val,
			   LAG (val,1,NULL) OVER (
							  PARTITION BY custid
							  ORDER BY orderdate  ASC) AS PREVORDRVALUE,
			   LEAD (val,1,NULL) OVER (
							  PARTITION BY custid
							  ORDER BY orderdate  ASC) AS NEXTODRDVALUE
		FROM Sales.OrderValues

		--Difference in order values
			SELECT custid,orderid,val,
			   LAG (val,1,0) OVER (
							  PARTITION BY custid
							  ORDER BY orderdate  ASC) AS PREVORDRVALUE,
			   val - LAG (val,1,0) OVER (
							  PARTITION BY custid
							  ORDER BY orderdate  ASC) AS DIFF_FROM_PREV,
			   LEAD (val,1,0) OVER (
							  PARTITION BY custid
							  ORDER BY orderdate  ASC) AS NEXTODRDVALUE,
			   val - LEAD (val,1,0) OVER (
							  PARTITION BY custid
							  ORDER BY orderdate  ASC) AS DIFF_FROM_NEXT
			FROM Sales.OrderValues
		--FIRST_VALUE and LAST_VALUE

		--Return value of customer's first order
		--Return value of customer's last order
		--my solution
		SELECT custid, orderid,val,orderdate, 
			   FIRST_VALUE(val) OVER(PARTITION BY custid 
								  ORDER BY orderdate DESC 
								  ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING ) 
								  AS FIRSTORDERVALUE,
			   LAST_VALUE(val) OVER(PARTITION BY custid 
								  ORDER BY orderdate DESC 
								  ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING ) 
								  AS LASTORDERVALUE
		FROM Sales.OrderValues

		--My solution revised
		SELECT custid, orderid,val,orderdate, 
			   FIRST_VALUE(val) OVER(PARTITION BY custid 
								  ORDER BY orderdate  
								  ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW ) 
								  --Assign the first value to everything before it
								  AS FIRSTORDERVALUE,
			   LAST_VALUE(val) OVER(PARTITION BY custid 
								  ORDER BY orderdate  
								  ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING ) 
								  AS LASTORDERVALUE
		FROM Sales.OrderValues
		
		--book solution
		SELECT custid, orderid,val,orderdate, 
			   FIRST_VALUE(val)OVER(PARTITION BY custid 
								     ORDER BY orderdate, orderid --orderis is just a tie breaker
								     ROWS BETWEEN CURRENT ROW AND UNBOUNDED PRECEDING) 
								     AS FIRSTORDERVALUE,
			   LAST_VALUE(val) OVER(PARTITION BY custid 
								    ORDER BY orderdate, orderid 
								    ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) 
								    AS LASTORDERVALUE
		FROM Sales.OrderValues
		--book solution changed
		SELECT custid, orderid,val,orderdate, 
			   FIRST_VALUE(val)OVER(PARTITION BY custid 
								     ORDER BY orderdate, orderid 
								     ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) --Everything before the current row
								     AS FIRSTORDERVALUE,
			   LAST_VALUE(val) OVER(PARTITION BY custid 
								    ORDER BY orderdate, orderid 
								    ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) 
								    AS LASTORDERVALUE
		FROM Sales.OrderValues
		
		--Aggregate window functions
		 
			--Return orders
			--Foreach order
				--grand total of all orders
				--customers total
			SELECT orderid,
				   SUM(val) AS GrandTotal, 
				   SUM(val) OVER(PARTITION BY custid) AS CustTotal
			FROM Sales.OrderValues
			GROUP BY orderid, custid


--PIVOTING

	USE TSQL2012;
	IF OBJECT_ID('dbo.Orders', 'U') IS NOT NULL DROP TABLE dbo.Orders;
	CREATE TABLE dbo.Orders
	(
		orderid INT NOT NULL,
		orderdate DATE NOT NULL,
		empid INT NOT NULL,
		custid VARCHAR(5) NOT NULL,
		qty INT NOT NULL,
		CONSTRAINT PK_Orders PRIMARY KEY(orderid)
	);

	--Sample Data INSERT
	INSERT INTO dbo.Orders(orderid, orderdate, empid, custid, qty)
	VALUES
		(30001, '20070802', 3, 'A', 10),
		(10001, '20071224', 2, 'A', 12),
		(10005, '20071224', 1, 'B', 20),
		(40001, '20080109', 2, 'A', 40),
		(10006, '20080118', 1, 'C', 14),
		(20001, '20080212', 2, 'B', 12),
		(40005, '20090212', 3, 'A', 10),
		(20002, '20090216', 1, 'C', 20),
		(30003, '20090418', 2, 'B', 15),
		(30004, '20070418', 3, 'C', 22),
		(30007, '20090907', 3, 'D', 30);
	SELECT * FROM dbo.Orders;

	--Total order quantity for each customer and employee
		SELECT empid,custid,SUM(qty) AS Total
		FROM dbo.Orders
		GROUP BY custid,empid;

		SELECT *
		  FROM dbo.Orders
		
	--Pivot
		--Standard SQL PIVOT
			SELECT  empid,
					SUM(CASE WHEN custid = 'A' THEN qty END) AS A,
					SUM(CASE WHEN custid = 'B' THEN qty END) AS B,
					SUM(CASE WHEN custid = 'C' THEN qty END) AS C,
					SUM(CASE WHEN custid = 'D' THEN qty END) AS D
			FROM dbo.Orders
			GROUP BY empid

		--TSQL PIVOT
			SELECT empid,[A] AS CustomerA,[B] AS CustomerB,[C] AS CustomerC,[D] AS CustomerD -- From [A] are the columns you want pivoted(row values
																							--turned to colums
			FROM (SELECT empid,custid,qty
				  FROM dbo.Orders) AS SourceTable
			PIVOT
			(	
				SUM(qty) --sum qty per custid
				FOR custid IN ([A],[B],[C],[D])
			) AS TOTAL_QTY_PER_EMP_PER_CUST_PIVOT

			--TEST
			---added orderdate as a non pivoted field
			SELECT empid,orderdate,[A] AS CustomerA,[B] AS CustomerB,[C] AS CustomerC,[D] AS CustomerD 
			FROM (SELECT empid,custid,orderdate,qty
				  FROM dbo.Orders) AS SourceTable
			PIVOT
			(	
				SUM(qty) --sum qty per custid
				FOR custid IN ([A],[B],[C],[D])
			) AS TOTAL_QTY_PER_EMP_PER_CUST_PIVOT

		--SELECT ORDRS.custid, ORDRS.empid, SUM(ORDDTLS.qty) AS "Total Order Quantity"
		--FROM Sales.Orders ORDRS
		--	INNER JOIN Sales.OrderDetails ORDDTLS
		--	ON ORDRS.orderid = ORDDTLS.orderid
		--GROUP BY ORDRS.custid, ORDRS.empid
		--NB: Using incorrect table. Boook uses a sample table called dbo.Orders



