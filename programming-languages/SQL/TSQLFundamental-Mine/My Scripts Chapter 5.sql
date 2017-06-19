--TABLE EXPRESSIONS
	--Benefit of Table Expressions: You can refer to the column names of the inner query(Even those in the SELECT clause) anywhere in the outer clause

	--1. DERIVED TABLE EXPRESSIONS
		--For example, suppose that you need to write a query against the Sales.Orders table and return the
		--number of distinct customers handled in each order year

			--First Logical version
			USE TSQL2012;
			SELECT  COUNT (DISTINCT Custid) AS NUMCUSTSID, YEAR(orderdate) AS ORDERYEAR
			FROM Sales.Orders
			GROUP BY YEAR(orderdate) -- This works well if the expression is short, you can just repeat it.
									 -- If the formula is long, this might cause bugs and code unrealiability

			--Table expression alternative
			USE TSQL2012;
			SELECT NUMCUSTID,ORDRTBLEXPRESSION.ORDERYEAR
			FROM (SELECT YEAR(orderdate) AS ORDERYEAR, COUNT (DISTINCT custid) AS NUMCUSTID
				  FROM Sales.Orders
				  GROUP BY YEAR(orderdate)) AS ORDRTBLEXPRESSION	
			--The inner query (Table expresion is handling the query work and outer one is just displaying)
			--Note: This is still incorrect, you repeated GROUP BY YEAR(orderdate)

			--Book table expression alternative [BETTER ALTERNATIVE]
			SELECT orderyear, COUNT(DISTINCT custid) AS numcusts
			FROM (SELECT YEAR(orderdate) AS orderyear, custid
				  FROM Sales.Orders) AS D
			GROUP BY orderyear;

			--SQL server will still expand the query to[Stressing that Table Expression are more for Logical Code and not for Peformance]:

				--SELECT YEAR(orderdate) AS orderyear, COUNT(DISTINCT custid) AS numcusts
				--FROM Sales.Orders
				--GROUP BY YEAR(orderdate);

		--USING ARGUMENTS 

			DECLARE @empid AS INT = 3;
			SELECT orderyear, COUNT(DISTINCT custid) AS numcusts
			FROM (SELECT YEAR(orderdate) AS orderyear, custid
				  FROM Sales.Orders
				  WHERE empid = @empid) AS D
			GROUP BY orderyear;

			--TEST -- You can refer to arguments in normal queries as well
			use TSQL2012;
			DECLARE @empid2 AS INT = 3;
			SELECT custid, orderid, empid
					FROM Sales.Orders
			WHERE empid = @empid2;

		--NESTING

			--For example, the code in Listing 5-2 returns order years and the number of customers handled in
			--each year only for years in which more than 70 customers were handled.

			--Return Order years
			--Num customers handled each year
			--Years more 70 customers handled

			--USE TSQL2012;
			--SELECT ORDRYEAR , COUNT (custid) AS numCusts
			--FROM (SELECT YEAR (orderdate) AS ORDRYEAR,custid  
			--	  FROM Sales.Orders) AS ORDRS
			--WHERE numCusts > 70
			--GROUP BY ORDRYEAR

			--USE TSQL2012;

		
			--SELECT COUNT(custid) numInstance, custid 
			--FROM Sales.Orders
			--GROUP BY  

			SELECT ORDRYEAR,NUMCUSTS
			FROM (SELECT ORDRYEAR, COUNT(custid) AS NUMCUSTS 
				  FROM (SELECT YEAR(orderdate) AS ORDRYEAR, custid
					  FROM Sales.Orders) AS YEARCUSTS
				  GROUP BY(ORDRYEAR)
				  ) AS TOTALCUSTSANDYEAR
			WHERE NUMCUSTS > 70

			--Book solution
			SELECT orderyear, numcusts
			FROM (SELECT orderyear, COUNT(DISTINCT custid) AS numcusts -- DO NOT FORGET THE DISTINCT	
				  FROM (SELECT YEAR(orderdate) AS orderyear, custid
						FROM Sales.Orders) AS D1
				  GROUP BY orderyear) AS D2
			WHERE numcusts > 70;

			--The whole purpose of using table expressions in this example was to simplify the solution by reusing
			--column aliases instead of repeating expressions.
			--NB: The nesting increases complexity, repeating expresssions like below actually work better. (The Length of the expression is
			--the defining factor for whether to use Nesting(derived tables) or repeat expression)

			--Alternative
			SELECT YEAR(orderdate) AS orderyear, COUNT(DISTINCT custid) AS numcusts
			FROM Sales.Orders
			GROUP BY YEAR(orderdate)
			HAVING COUNT(DISTINCT custid) > 70;
		
		--MULTIPLE REFERENCES
			--Another problematic aspect of derived tables stems from the fact that derived tables are defined in
			--the FROM clause of the outer query and not prior to the outer query. As far as the FROM clause of
			--the outer query is concerned, the derived table doesn’t exist yet; therefore, if you need to refer to
			--multiple instances of the derived table, you can’t. Instead, you have to define multiple derived tables
			--based on the same query. The query in Listing 5-3 provides an example.
		SELECT Cur.orderyear,
		Cur.numcusts AS curnumcusts, Prv.numcusts AS prvnumcusts,
		Cur.numcusts - Prv.numcusts AS growth
		FROM (SELECT YEAR(orderdate) AS orderyear,COUNT(DISTINCT custid) AS numcusts
			  FROM Sales.Orders
			  GROUP BY YEAR(orderdate)) AS Cur
		LEFT OUTER JOIN
			(SELECT YEAR(orderdate) AS orderyear, COUNT(DISTINCT custid) AS numcusts
			 FROM Sales.Orders
				GROUP BY YEAR(orderdate)) AS Prv
		ON Cur.orderyear = Prv.orderyear + 1;

	--2. COMMON TABLE EXPRESSION (CTEs)

		--As a simple example, the following code defines a CTE called USACusts
		--based on a query that returns all customers from the United States, and the outer query selects all
		--rows from the CTE.
			
			--My Solution
			--Any preceeding statement (in the same batch, if any) must be closed with a semi-colon when using WITH for CTEs
			WITH USACusts (custid,country,companyname)
			AS
			(
				--Use statement is not alllowed in here (example USE TSQL...) produced an erro, others might work need to experiment
				SELECT custid, country, companyname
				FROM Sales.Customers
				WHERE country = N'USA'

				--NB: The inner query must comply with  3 Table expresion conditions
			)
			SELECT custid,companyname,country FROM USACusts; 

			--Book solution
			WITH USACusts AS
			(
			SELECT custid, companyname
			FROM Sales.Customers
			WHERE country = N'USA'
			)
			SELECT * FROM USACusts;

		--Aliases with CTEs
				--inline
			WITH C AS
			(
				SELECT YEAR(orderdate) AS orderyear, custid
				FROM Sales.Orders
			)
			SELECT orderyear, COUNT(DISTINCT custid) AS numcusts
			FROM C
			GROUP BY orderyear;

				--external	
			WITH C(orderyear, custid) AS
			(
				SELECT YEAR(orderdate), custid
				FROM Sales.Orders
			)
			SELECT orderyear, COUNT(DISTINCT custid) AS numcusts
			FROM C
			GROUP BY orderyear;
		
		--Defining Multiple CTEs
			--A CTE is defined before use, thus any subsequent CTEs and queries can reference.[Unlike derived queries where you had to define 
				--multiple instances of the query ] 
			--It takes a modular approach, making maintenance easy	

			--Alternative to the multiple definitions of derived queries above
			WITH C1 AS
			(
				SELECT YEAR(orderdate) AS orderyear, custid
				FROM Sales.Orders
			),
			C2 AS
			(
				SELECT orderyear, COUNT(DISTINCT custid) AS numcusts
				FROM C1
				GROUP BY orderyear
			)
			SELECT orderyear, numcusts
			FROM C2
			WHERE numcusts > 70;

		--Multiple CTE references

		WITH YearlyCount AS
		(
			SELECT YEAR(orderdate) AS orderyear,
			COUNT(DISTINCT custid) AS numcusts
			FROM Sales.Orders
			GROUP BY YEAR(orderdate)
		)
		SELECT Cur.orderyear,
		Cur.numcusts AS curnumcusts, Prv.numcusts AS prvnumcusts,
		Cur.numcusts - Prv.numcusts AS growth
		FROM YearlyCount AS Cur
			LEFT OUTER JOIN YearlyCount AS Prv
			ON Cur.orderyear = Prv.orderyear + 1;

		--Recursive CTEs

			--The following code demonstrates how to use
			--a recursive CTE to return information about an employee (Don Funk, employee ID 2) and all of the
			--employee’s subordinates in all levels (direct or indirect).

			--My Solution
			WITH EMP_DATA
			AS
			(
				SELECT empid,mgrid,firstname,lastname
				FROM HR.Employees
				WHERE empid = 2

				UNION ALL --Key 

				SELECT EMPS.empid,EMPS.mgrid,EMPS.firstname,EMPS.lastname 
				FROM EMP_DATA AS EMPS
					INNER JOIN
						HR.Employees AS EMPS2
					ON EMPS.mgrid = EMPS2.empid
			)
			SELECT empid,mgrid,firstname,lastname
			FROM EMP_DATA;

			--Book solution

			WITH EmpsCTE AS
			(
				SELECT empid, mgrid, firstname, lastname
				FROM HR.Employees
				WHERE empid = 2

				UNION ALL

				SELECT C.empid, C.mgrid, C.firstname, C.lastname
				FROM EmpsCTE AS P
					JOIN HR.Employees AS C
				ON C.mgrid = P.empid
			)
			SELECT empid, mgrid, firstname, lastname
			FROM EmpsCTE;

	--3. VIEWS 
	--For example, the following code creates a view called USACusts in the Sales schema in the
	--TSQL2012 database, representing all customers from the United States
			use TSQL2012;
			IF OBJECT_ID('Sales.USACusts') IS NOT NULL
			DROP VIEW Sales.USACusts;
			GO

			CREATE VIEW Sales.USACusts
			AS
				SELECT custid, companyname, contactname, contacttitle, address,
					   city, region, postalcode, country, phone, fax
				FROM Sales.Customers
				WHERE country = N'USA';
			GO

	--VIEW OPTIIONS
		
		--ENCRYPTION: Available when you create/alter view,stored procedures,triggers and user-defined functions(UDFs)
			
			ALTER VIEW Sales.USACusts
			AS
				SELECT
				custid, companyname, contactname, contacttitle, address,
				city, region, postalcode, country, phone, fax
				FROM Sales.Customers
				WHERE country = N'USA';
			GO

			--To get the definition of the view, invoke the OBJECT_DEFINITION function like this.
			SELECT OBJECT_DEFINITION(OBJECT_ID('Sales.USACusts'));

				--WITH ENCRYPTION
			ALTER VIEW Sales.USACusts WITH ENCRYPTION
			AS
				SELECT
				custid, companyname, contactname, contacttitle, address,
				city, region, postalcode, country, phone, fax
				FROM Sales.Customers
				WHERE country = N'USA';
			GO
	
			SELECT OBJECT_DEFINITION(OBJECT_ID('Sales.USACusts')); --You get NULL for this 
			EXEC sp_helptext 'Sales.USACusts'; --Alternative to the code above

	--SCHEMABINDING
		--It indicates that referenced objects cannot be dropped and that referenced columns cannot be dropped or altered.
		--Available to view and User Defiend Functions (UDFs) only
		--Binds an object to a schema and the schema to the object
			--You cannot alter the Schema ensuring that the view is always referencing columns/objects that exist

			ALTER VIEW Sales.USACusts WITH SCHEMABINDING
			AS
				SELECT
				custid, companyname, contactname, contacttitle, address,
				city, region, postalcode, country, phone, fax
				FROM Sales.Customers
				WHERE country = N'USA';
			GO
		
			ALTER TABLE Sales.Customers DROP COLUMN address;

			--Two requirements that objects must meet to be able to use SCHEMABINDING
				-- Column names must be explicit (SELECT * is not allowed)
				-- Objects must be declared with schema-qualified two-part names (i.e Sales.USACusts)
			--Its good practise to declare your objects with Schema binding
	
		--CHECK OPTION option	
			--Ensures that any new rows or changes to rows through the view meet the view's filter(if it was created with one)


			ALTER VIEW Sales.USACusts WITH SCHEMABINDING
				AS
				SELECT
				custid, companyname, contactname, contacttitle, address,
				city, region, postalcode, country, phone, fax
				FROM Sales.Customers
				WHERE country = N'USA'
				WITH CHECK OPTION; --NB: This is defined at the end
			GO

			INSERT INTO Sales.USACusts( companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax)
			VALUES(
			N'Customer FGHIJ', N'Contact FGHIJ', N'Title FGHIJ', N'Address FGHIJ',
			N'London', NULL, N'12345', N'UK', N'012-3456789', N'012-3456789'); 
		--This generates an error because the country does not meet the USA filter

	--inline TVF
			--Basically view that accepts parameters

			--For example, the following code creates an inline TVF called GetCustOrders in the TSQL2012 database.
			--Mine
			USE TSQL2012
			IF OBJECT_ID('dbo.GetCust') IS NOT NULL 
				DROP FUNCTION Sales.GetCust
				GO
				CREATE FUNCTION dbo.GetCust 
				(@cid INT) RETURNS TABLE
				AS
					RETURN
						SELECT custid, orderid
						FROM Sales.Orders
						WHERE custid = @cid

			--Book
			USE TSQL2012;
			IF OBJECT_ID('dbo.GetCustOrders') IS NOT NULL
				DROP FUNCTION dbo.GetCustOrders;
				GO
				CREATE FUNCTION dbo.GetCustOrders
				(@cid AS INT) RETURNS TABLE
				AS
					RETURN
						SELECT orderid, custid, empid, orderdate, requireddate,
						shippeddate, shipperid, freight, shipname, shipaddress, shipcity,
						shipregion, shippostalcode, shipcountry
						FROM Sales.Orders
						WHERE custid = @cid;
			GO

			--Using the TVF
			SELECT custid, orderdate, orderid
			FROM dbo.GetCustOrders(1) AS CUSTORDRS -- The result of the inline TVF is still a table expression. Its good practice to give
												   --it an alias


		--As with other tables, you can refer to an inline TVF as part of a join. For example, the following
		--query joins the inline TVF returning customer 1’s orders with the Sales.OrderDetails table, matching
		--customer 1’s orders with the related order lines.

		SELECT CUSTORDRS.custid, CUSTORDRS.orderdate, CUSTORDRS.orderid, ORDRDETAILS.productid, ORDRDETAILS.qty, ORDRDETAILS.unitprice
		FROM dbo.GetCustOrders(1) AS CUSTORDRS
			INNER JOIN Sales.OrderDetails AS ORDRDETAILS
				ON CUSTORDRS.orderid = ORDRDETAILS.orderid


--THE APPLY operator

	--Two types
		--CROSS APPLY : One logical processing phase
		--OUTER APPLY : Two logical processing phases

	--Operates on Two tables [the second one can be a Table Expression]
	--The key about APPLY is the ability to access column of the left table you're joining to (Remember you're derived table will be
	--on the the RIGHT)

--EXCERCISES

	--1-1
	--Write a query that returns the maximum value in the orderdate column for each employee.

	--Maximum orderdate
	--Per Employee
	use TSQL2012;
	SELECT empid,MAX(orderdate) AS MAXORDERDATE
	FROM Sales.orders
	GROUP BY empid

	--Derived table alternative

	use TSQL2012;
	SELECT MA
XORDERDATETABLE.empid,MAXORDERDATETABLE.MAXORDERDATE
	FROM (SELECT MAX(orderdate) AS MAXORDERDATE, empid 
		  FROM Sales.Orders
		  GROUP BY empid) AS MAXORDERDATETABLE
	
	--1.2
	--Encapsulate the query from Exercise 1-1 in a derived table. Write a join query between the derived
	--table and the Orders table to return the orders with the maximum order date for each employee.
		--They are referring to the first query for one to turn into a DERIVED TABLE
		
		--Encapsulate the query from Exercise 1-1 in a derived table
		--Join orders and Derived table
		--Return orders with the Maximum order date
			--Per employee

		--Incomplete

		USE TSQL2012;

		SELECT  MAXORDERDATETABLE.empid, MAXORDERDATETABLE.MAXORDERDATE,ORDRS.orderid, ORDRS.custid
		FROM Sales.Orders AS ORDRS
		CROSS JOIN
			(SELECT MAX(orderdate) AS MAXORDERDATE, empid
			  FROM Sales.Orders	
			  GROUP BY empid) AS MAXORDERDATETABLE
		WHERE ORDRS.orderdate = MAXORDERDATETABLE.MAXORDERDATE	

	--2-1
	--Write a query that calculates a row number for each order based on orderdate, orderid ordering.

		--calculate a row number for each order
		--based on orderdate, orderid ordering

		USE TSQL2012;
		SELECT COUNT(orderid) AS rownumber
		FROM Sales.Orders
		ORDER BY orderdate, orderid

		SELECT ORRDSROWNUMBER.rownumber
		FROM (SELECT COUNT(orderid) AS rownumber, orderid
			  FROM Sales.Orders 
			  GROUP BY orderid) AS ORRDSROWNUMBER

		
		
	--3 (Optional, Advanced)
	--Write a solution using a recursive CTE that returns the management chain leading to Zoya
	--Dolgopyatova
	--(employee ID 9).

	USE TSQL2012;

	WITH MANCHAIN AS
	(
		SELECT empid, mgrid, firstname,lastname
		FROM HR.Employees
		WHERE empid = 9

		UNION ALL

		SELECT EMPSDATA.empid
		FROM HR.Employees AS EMPSDATA
		INNER JOIN
			MANCHAIN AS MC
		ON MC.mgrid = EMPSDATA.empid

	)
	SELECT empid,lastname,firstname
	FROM MANCHAIN;


