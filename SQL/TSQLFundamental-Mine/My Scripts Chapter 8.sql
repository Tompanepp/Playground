USE TSQL2012;
IF OBJECT_ID('dbo.Orders', 'U') IS NOT NULL DROP TABLE dbo.Orders;
	CREATE TABLE dbo.Orders
	(
		orderid INT NOT NULL CONSTRAINT PK_Orders PRIMARY KEY,
		orderdate DATE NOT NULL CONSTRAINT DFT_orderdate DEFAULT(SYSDATETIME()),
		empid INT NOT NULL,
		custid VARCHAR(10) NOT NULL
	)
	--Correct Way to Alter a table and add a foregin key
IF OBJECT_ID('dbo.Orders', 'U') IS NOT NULL DROP TABLE dbo.Orders;	
	ALTER TABLE dbo.Orders
		DROP CONSTRAINT fk_orderid;
IF OBJECT_ID('dbo.Orders', 'U') IS NOT NULL DROP TABLE dbo.Orders;
	ALTER TABLE dbo.Orders
		ADD CONSTRAINT fk_orderid
			FOREIGN KEY(empid) REFERENCES dbo.Orders(orderid); --Actual Foreign key is the empid in FOREIGN KEY(empid)

	--DROPING A PRIMARY KEY
IF OBJECT_ID('dbo.Orders', 'U') IS NOT NULL DROP TABLE dbo.Orders;
	ALTER TABLE dbo.Orders
		DROP CONSTRAINT pk_orderid
	
IF OBJECT_ID('dbo.Orders', 'U') IS NOT NULL DROP TABLE dbo.Orders;
	ALTER TABLE dbo.Orders
		ADD CONSTRAINT pk_orderid PRIMARY KEY(orderid);
	

	----Incorrect
	--ALTER TABLE dbo.Orders
	--ADD CONSTRAINT PK_EMPID FOREIGN KEY (empid);

--INSERTING DATA
	--INSERTS STRUCTURE
		--Where to Insert : INSERT INTO .....
		--Datasource:		VALUES clause,A SELECT STATEMENT,EXEC,  
	--INSERT TYPES

		--INSERT VALUES: Insert these values (VALUES clause) : executed atomically (all rows must insert or none will be inserted)
		--INSERT SELECT: Insert results of the SELECT : executed atomically (all rows must insert or none will be inserted)
		--INSERT EXEC: Insert results of a Stored Procedure
		--SELECT INTO: Crate a table and Insert results of the SELECT (Non standard)
		--BULK INSERT: Inserts from a file, you specify Country,Region, City

		--INSERT VALUES: Insert these values (VALUES clause)

			INSERT INTO dbo.Orders (orderid,orderdate,empid,custid)
			VALUES(1,'20150117',1,1)
		
			--Enhanced VALUES clause(SQL Server 2008 and 2012)
				--Inserting multiple rows
				INSERT INTO dbo.Orders
				(orderid,orderdate,empid,custid)
				VALUES (11111,'20010101',1,1),
					   (11112,'20010101',1,1),
					   (11113,'20010101',1,1),
					   (11114,'20010101',1,1);

				INSERT INTO dbo.Orders
				(orderid, orderdate, empid, custid)
				VALUES	(10003, '20090213', 4, 'B'),
						(10004, '20090214', 1, 'A'),
						(10005, '20090213', 1, 'C'),
						(10006, '20090215', 3, 'C');

				--Used to create a virtual table
				SELECT O.orderid,O.empid,O.custid,O.orderdate
					FROM 
					( 
						VALUES(10003, '20090213', 4, 'B'),
							  (10004, '20090214', 1, 'A'),
							  (10005, '20090213', 1, 'C'),
							  (10006, '20090215', 3, 'C') 
					) AS O(orderid, orderdate, empid, custid);

		--INSERT SELECT: Insert results of the SELECT 

			INSERT INTO dbo.Orders 
			(orderid,orderdate,empid,custid)
			SELECT 
				orderid,
				orderdate,
				empid,
				custid
			FROM dbo.Orders

			--inserts into the dbo.Orders table the
			--result of a query against the Sales.Orders table returning orders that were shipped to the United
			--Kingdom.

			--adding a country column to the table
			--Dropping a column --INVESTIGATE FURTHER
			--IF EXISTS (SELECT * 
			--		   FROM INFORMATION_SCHEMA.COLUMNS
			--		   WHERE TABLE_NAME = 'dbo.Orders'
			--		   AND COLUMN_NAME = 'ShipCountry') 	 

			ALTER TABLE dbo.Orders
				ADD ShipCountry nvarchar(100) -- Note there is no need for COLUMN after ADD (i.e. ADD COLUMN = this is not correct)

			INSERT INTO dbo.Orders
			(orderid,orderdate,empid,custid,ShipCountry) 
			SELECT 
				orderid,
				orderdate,
				empid,
				custid,
				shipcountry
			FROM Sales.Orders
			WHERE shipcountry = 'UK'

			select * from Sales.Orders
			select * from dbo.Orders
			truncate table dbo.Orders

	--INSERT EXEC

		--Example stored procedure
			--the following code creates a stored procedure called Sales.usp_getorders, returning
			--orders that were shipped to a specified input country (with the @country parameter).
			--IF OBJECT_ID('Sales.usp_getorders', 'P') 

			IF OBJECT_ID('Sales.usp_getorders') IS NOT NULL DROP PROCEDURE Sales.usp_getorders
			GO --Note the need for GO when using CREATE statement and IF and those other statement(ALTER,DROP etc)
			CREATE PROCEDURE Sales.usp_getorders
			(
				@country nvarchar(100)
			)
			AS
			(
				SELECT 
					orderid,
					orderdate,
					empid,
					custid,
					shipcountry
				FROM Sales.Orders
				WHERE shipcountry = @country
			)

		--Actual INSERT EXEC
			INSERT INTO dbo.Orders
			EXEC Sales.usp_getorders @Country = 'USA'

	--SELECT INTO
		--Copies table structure but not
			--constraints, indexes, triggers, and permissions
		SELECT 
			orderid,
			orderdate,
			empid,
			custid,
			shipcountry
		INTO dbo.NewOrderTable 
		FROM dbo.Orders
		WHERE 1=0 -- Just structure without data 1 will neer be equal to 0

		--If "Recovery Model" is not set to FULL, the SELECT INTO operation is performed in a minimally logged mode, thus faster
		 --operation than fully logged one

		--the following SELECT INTO statement
		--creates a table called Locations and populates it with the result of an EXCEPT set operation, returning
		--locations where there are customers but not employees.
		IF OBJECT_ID('Locations','U') IS NOT NULL DROP TABLE Locations
			SELECT 
				Country,
				Region,
				City
			INTO dbo.Locations
			FROM 
				Sales.Customers
			EXCEPT
			SELECT 
				Country,
				Region,
				City
			FROM 
				HR.Employees

			select * from dbo.Locations
	
		--BULK INSERT
		BULK INSERT dbo.NewOrderTable
		FROM 'C:\Users\Papudi\Dropbox\School\MCSA\70-461\TestOders.txt'
		WITH
		(
			DATAFILETYPE = 'char', --either char or native . Its the data's types
			FIELDTERMINATOR = ',',
			ROWTERMINATOR ='\n'
		)

--AUTO GENERATING NUMBERS
--INDENTITY AND SEQUENCE OBJECT
			--TO REFERENCE Generated Identities
			--@@IDENTITY --Last generated IDENTITY in the SESSION, regardless of scope
							--The last IDENTITY generated in the session will be returned
			--SCOPE_IDENTITY --Last generate IDENTITY in the SESSION and CURRENT PROCEDURE
			--IDENT_CURRENT(identity current) : Generates last IDENTITY generated for a table, regardless of Session
				--IDENT_CURRENT will return the highest IDENTITY (e.g. if you explicitly insert
						--an IDENTITY column value less than the highest, IDENT_CURRENT will return the highest
						--	one and not the last one inserted(yours)
				SELECT IDENT_CURRENT('dbo.T1') --last value generated	
					--SELECT
						--SCOPE_IDENTITY() AS [SCOPE_IDENTITY],
						--@@identity AS [@@identity],
						--IDENT_CURRENT('dbo.T1') AS [IDENT_CURRENT]; --Run in another window to see
	--IDENTITY
		--Notes
			--A value is generated even if the statement fails
			--IDENTITY cannot be added/removed from EXISTING column
				--Must be part of the CREATE TABLE or ALTER TABLE statement
			 --DBCC CHECKIDENT : reseeds IDENTITY
			 --IDENTITY does not guarantee uniqueness, one can insert already existing IDENTITY values

		--MY TESTS
			--IF OBJECT_ID('dbo.T1','U') IS NOT NULL --if(objectid(dbo.T1,'U') = null)
			--	DROP TABLE dbo.T1 
			--GO
			--	CREATE TABLE dbo.T1
			--	(
			--		id int IDENTITY(1,1) --IDENTITY is a property
			--			--CONSTRAINT pk_t1 PRIMARY KEY(id) 
			--			--NB: Implicitly won't be NULL because it's a primary key: WRONG!!
			--			--NB: Default is NOT NULL: WRONG
			--			--NB!!NB!!:  IDENTITY is making it NOT NULL because it will always assign it a value
			--	)
		
			--	ALTER TABLE dbo.T1
			--		ADD CONSTRAINT pk_T1 PRIMARY KEY(id)
			--	ALTER TABLE dbo.T1
			--		DROP CONSTRAINT pk_T1
			--	ALTER TABLE dbo.T1
			--		ADD Descr nvarchar(1000)
		IF OBJECT_ID('dbo.T1', 'U') IS NOT NULL DROP TABLE dbo.T1;
		CREATE TABLE dbo.T1
		(
			keycol INT NOT NULL IDENTITY(1, 1)
				CONSTRAINT PK_T1 PRIMARY KEY,
			datacol VARCHAR(10) NOT NULL
				CONSTRAINT CHK_T1_datacol CHECK(datacol LIKE '[A-Za-z]%')
		);

		--NB: Note how to change a column. Need to start at the Table level, then Alter column
		ALTER TABLE dbo.T1
			ALTER COLUMN
				datacol varchar(100)
					--ADD CONSTRAINT CHK_T1_datacol CHECK(datacol LIKE '[A-Za-z]%')

		INSERT INTO dbo.T1
		VALUES('Test'),
			  ('YU'),
			  ('IO')

		select * from dbo.T1


		INSERT INTO dbo.T1
		VALUES('Scope Identity Test')

		DECLARE @LastIdentity AS INT = SCOPE_IDENTITY();
		PRINT @LastIdentity

	--SEQUENCE OBJECT 
		--NB: It is standard
		--Not tied to colunm
		--Idependent object in the DATABASE
			--can be queried any time
		--Can specify MINVALUE and MAXVALUE
			--DataType ranges used if not specified
		--has a CYCLE option
		--START WITH --Will be the same as MINVALUE of the type/one specified
		--INCREMENET BY --default is 1
		--(CACHE <val> | NO CACHE): How many values to write to disk
		--NEXT VALUE FOR <sequence name> : Generate and Get next value 

		--EXAMPLE
		--create a sequence that will help you generate order IDs. You
		--want it to be of an INT type, have a minimum value of 1 and a maximum value that is the maximum
		--supported by the type, start with 1, increment by 1, and allow cycling
		
		--INCORRECT
		CREATE SEQUENCE seqOBJ AS INT --default is BIGINT
		(
			MINVALUE 1
			START WITH 1
			INCREMENT BY 1
			CYCLE
		)
		--CORRECT BUT TOO MUCH CODE
		CREATE SEQUENCE seqOBJ AS INT --default is BIGINT
			MINVALUE 1
			START WITH 1
			INCREMENT BY 1
			CYCLE;
		--CORRECT AND less code, infers the defaults
		CREATE SEQUENCE seqOBJ AS INT
			MINVALUE 1 --Start with will draw from this value and Increment by 1 is default behaviour
			CYCLE;

		--EXAMPLE (Altering
			--ALTER SEQUENCE command
			--MINVAL <val>, 
			--MAXVAL <val>, 
			--RESTART WITH <val>, --Take note of this
			--INCREMENT BY <val>, 
			--CYCLE | NO CYCLE,
			--CACHE <val> | NO CACHE)

		ALTER SEQUENCE seqOBJ
			NO CYCLE
	
		--Getting next value
			SELECT NEXT VALUE FOR seqOBJ
			DECLARE @T AS INT = NEXT VALUE FOR seqOBJ
			PRINT @T
		--Can insert next value directly(i.e without a variable)
			SET IDENTITY_INSERT dbo.T1 ON;
			INSERT INTO dbo.T1 (keycol,datacol)
			VALUES(NEXT VALUE FOR seqOBJ,'Using a sequence object')
		
			SELECT * FROM dbo.T1

		--Can be used with UPDATE
			--NB: IDENTITY cannot be updated, hence this query fails
			SET IDENTITY_INSERT dbo.T1 ON;
				UPDATE dbo.T1
					SET keycol = NEXT VALUE FOR seqOBJ 
			--Creating a column to use the sequence object with,a non-identity column(i.e. can be updated)
			ALTER TABLE dbo.T1
				ADD seqObjecID AS INT --You just say ADD
										--No need for "ADD COLUMN"

		--Get info about sequence objects
			--Query sys.sequences
		--Get current sequence
			--IDENT_CURRENT(seqOBJ) wrong!! It works only with an IDENTITY column
			SELECT current_value
			FROM sys.sequences
			WHERE OBJECT_ID = OBJECT_ID('seqOBJ')
		
		--EXTENDED T-SQL FEATURES FOR SEQUENCE OBJECT

			--Control order of assigned sequences
			--Use as a DEFAULT value
			--Allocate a range of IDs

			--Control order of assigned sequences
				SET IDENTITY_INSERT dbo.T1 ON;
				INSERT INTO dbo.T1(keycol, datacol)
				SELECT
					NEXT VALUE FOR dbo.seqOBJ OVER(ORDER BY hiredate),--Base the SEQUENCE NUMBER ALLOCATION 
								--on the ORDER of the RECORDS which is based on the HIREDATE
					LEFT(firstname, 1) + LEFT(lastname, 1) --First left characters of FirstName and LastName
				FROM HR.Employees;
				SELECT * FROM dbo.T1;

			--Use as a DEFAULT value
				ALTER TABLE dbo.T1
					ADD seqObjNum INT

				ALTER TABLE dbo.T1
					--Every insert will get the next value in the sequence object
					ADD CONSTRAINT DFLT_seqObjNum 
						DEFAULT(NEXT VALUE FOR seqObj) 
							FOR seqObjNum 

					--ADD CONSTRAINT DFLT_seqObjNum DEFAULT(1) 
					--FOR seqObjNum
				ALTER TABLE dbo.T1
					DROP CONSTRAINT DFLT_seqObjNum
						
			--Allocate a range of IDs
				--Use a stored procedure
					--It a allocated n numbers of the sequence object
				
				--Reseting sequence object for purpose of this test
				ALTER SEQUENCE seqOBJ
					RESTART WITH 1
				--Check current value
				select current_value	
				from sys.sequences
				where object_id = object_id('seqOBJ')

					--Actual Test
				DECLARE @first AS SQL_VARIANT --Store all SQL SERVER data types except text,ntext,
													--image,timestamp,sql_variant

				EXEC sys.sp_sequence_get_range
					@sequence_name = 'seqOBJ',
					@range_size = 1000,
					@range_first_value = @first OUTPUT
				
				SELECT @first

--DELETING DATA

	IF OBJECT_ID('dbo.Orders', 'U') IS NOT NULL DROP TABLE dbo.Orders;
	IF OBJECT_ID('dbo.Customers', 'U') IS NOT NULL DROP TABLE dbo.Customers;
	CREATE TABLE dbo.Customers
	(
		custid INT NOT NULL,
		companyname NVARCHAR(40) NOT NULL,
		contactname NVARCHAR(30) NOT NULL,
		contacttitle NVARCHAR(30) NOT NULL,
		address NVARCHAR(60) NOT NULL,
		city NVARCHAR(15) NOT NULL,
		region NVARCHAR(15) NULL,
		postalcode NVARCHAR(10) NULL,
		country NVARCHAR(15) NOT NULL,
		phone NVARCHAR(24) NOT NULL,
		fax NVARCHAR(24) NULL,
		CONSTRAINT PK_Customers PRIMARY KEY(custid)
	);				
	CREATE TABLE dbo.Orders
	(
		orderid INT NOT NULL,
		custid INT NULL,
		empid INT NOT NULL,
		orderdate DATETIME NOT NULL,
		requireddate DATETIME NOT NULL,
		shippeddate DATETIME NULL,
		shipperid INT NOT NULL,
		freight MONEY NOT NULL
		CONSTRAINT DFT_Orders_freight DEFAULT(0),
		shipname NVARCHAR(40) NOT NULL,
		shipaddress NVARCHAR(60) NOT NULL,
		shipcity NVARCHAR(15) NOT NULL,
		shipregion NVARCHAR(15) NULL,
		shippostalcode NVARCHAR(10) NULL,
		shipcountry NVARCHAR(15) NOT NULL,
		CONSTRAINT PK_Orders PRIMARY KEY(orderid),
		CONSTRAINT FK_Orders_Customers FOREIGN KEY(custid)
		REFERENCES dbo.Customers(custid)
	);
	GO
	INSERT INTO dbo.Customers SELECT * FROM Sales.Customers; --select * into dbo.Customers from Sales.Customers
	INSERT INTO dbo.Orders SELECT * FROM Sales.Orders;

	--The DELETE statement
		--Stanard
		--Deletes rows
			--based on a predicate
		--Two clauses: FROM and WHERE
		--Fully logged
		--DOES NOT RESET IDENTITY

		--Example
		--For example, the following statement deletes, from the dbo.Orders table, all orders that were
		--placed prior to 2007

		--ME
		DELETE 
		FROM dbo.Orders
		WHERE YEAR(orderdate) < 2007
		
		--Book
		DELETE FROM dbo.Orders
		WHERE orderdate < '20070101';	
	
	--TRUNCATE
		--Has no filter
		--Minimal logging
			--Fully transactional
			--SQL server can rollback a truncate
		--RESETS IDENTITY VALUE(Note: DELETE does not)
		--NOT allowed when target table column is referenced by a FOREIGN KEY
			--Must DROP all FOREIGN KEY FIRST
				--EVEN IF THEY ARE EMPTY OR DISABLED
				--THERE MUST BE NO FOREIGN KEY	
		truncate table dbo.Orders

		SELECT * FROM dbo.Orders
	
	--DELETE BASED ON A JOIN
		--Join serves to filter
		--Delete rows in Table A based on Rows(Input) from Table B

		--For example, the following statement deletes orders placed by customers from the United States.

		DELETE FROM ORDS --Key is that you're deleting from X (X = table you want to take things out from, which
							--you join to another table for the PREDICATE you're looking for)
		FROM dbo.Orders AS ORDS
				INNER JOIN 
					(SELECT custid,country 
						FROM dbo.Customers) AS CUSTS
				ON ORDS.custid = CUSTS.custid
		WHERE CUSTS.country = 'USA'
		--HERE IS HOW IT WORKS
			--The inner FROM clase simply joins the two
			--The where clause brings back on USA based customers
			--The Outer FROM clause gives the final result to the DELETE statement
			--The DELETE statement deletes the final result

		--SUBQUERY ALTERNATIVE
				
		DELETE
		FROM dbo.Orders 
		WHERE custid IN  
			(SELECT 
				custid 
			FROM 
				dbo.Customers
			WHERE country = 'USA') -- Subquery does not have aliases, once it does it's a derived table


--UPDATING DATA
	--STRUCTURE CHANGES
		IF OBJECT_ID('dbo.OrderDetails', 'U') IS NOT NULL DROP TABLE dbo.OrderDetails;
	IF OBJECT_ID('dbo.Orders', 'U') IS NOT NULL DROP TABLE dbo.Orders;
	CREATE TABLE dbo.Orders
	(
	orderid INT NOT NULL,
	custid INT NULL,
	empid INT NOT NULL,
	orderdate DATETIME NOT NULL,
	requireddate DATETIME NOT NULL,
	shippeddate DATETIME NULL,
	shipperid INT NOT NULL,
	freight MONEY NOT NULL
	CONSTRAINT DFT_Orders_freight DEFAULT(0),
	shipname NVARCHAR(40) NOT NULL,
	shipaddress NVARCHAR(60) NOT NULL,
	shipcity NVARCHAR(15) NOT NULL,
	shipregion NVARCHAR(15) NULL,
	shippostalcode NVARCHAR(10) NULL,
	shipcountry NVARCHAR(15) NOT NULL,
	CONSTRAINT PK_Orders PRIMARY KEY(orderid)
	);
	CREATE TABLE dbo.OrderDetails
	(
	orderid INT NOT NULL,
	productid INT NOT NULL,
	unitprice MONEY NOT NULL
	CONSTRAINT DFT_OrderDetails_unitprice DEFAULT(0),
	qty SMALLINT NOT NULL
	CONSTRAINT DFT_OrderDetails_qty DEFAULT(1),
	discount NUMERIC(4, 3) NOT NULL
	CONSTRAINT DFT_OrderDetails_discount DEFAULT(0),
	CONSTRAINT PK_OrderDetails PRIMARY KEY(orderid, productid),
	CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY(orderid)
	REFERENCES dbo.Orders(orderid),
	CONSTRAINT CHK_discount CHECK (discount BETWEEN 0 AND 1),
	CONSTRAINT CHK_qty CHECK (qty > 0),
	CONSTRAINT CHK_unitprice CHECK (unitprice >= 0)
	);
	GO
	INSERT INTO dbo.Orders SELECT * FROM Sales.Orders;
	INSERT INTO dbo.OrderDetails SELECT * FROM Sales.OrderDetails;
	--UPDATE BASED ON A JOIN

	--increases the discount of all order details of orders placed by customer 1 by 5 percent.

	--Correct
	UPDATE ODDTLS
	SET Discount += 0.05
	FROM dbo.OrderDetails AS ODDTLS
		INNER JOIN dbo.Orders ODS
		ON ODS.orderid = ODDTLS.orderid
	WHERE custid = 1

	--Test: Change target to dbo.OrderDetails
	UPDATE dbo.OrderDetails
	SET Discount += 0.05
	FROM dbo.OrderDetails AS ODDTLS
		INNER JOIN dbo.Orders ODS
		ON ODS.orderid = ODDTLS.orderid
	WHERE custid = 1

	--Subquery alternative
	
	UPDATE dbo.OrderDetails 
	SET Discount += 0.05
	WHERE orderid IN 
				 (SELECT orderid 
				  FROM dbo.Orders AS O
				  WHERE custid = 1)
	--Correlated subquery version
	UPDATE dbo.OrderDetails
	SET discount += 0.05
	WHERE EXISTS
		(SELECT * FROM dbo.Orders AS O
		 WHERE O.orderid = OrderDetails.orderid
		 AND O.custid = 1);

				 
	

	SELECT * 
	FROM dbo.OrderDetails AS ODDTLS
		INNER JOIN dbo.Orders ODS
		ON ODS.orderid = ODDTLS.orderid
	WHERE custid = 1

--MERGING DATA

	--Combination of DELETE,UPDATE and INSERT based on conditions
	IF OBJECT_ID('dbo.Customers', 'U') IS NOT NULL DROP TABLE dbo.Customers;
	GO
	CREATE TABLE dbo.Customers
	(
	custid INT NOT NULL,
	companyname VARCHAR(25) NOT NULL,
	phone VARCHAR(20) NOT NULL,
	address VARCHAR(50) NOT NULL,
	CONSTRAINT PK_Customers PRIMARY KEY(custid)
	);

	--Test data
	INSERT INTO dbo.Customers(custid, companyname, phone, address)
	VALUES
	(1, 'cust 1', '(111) 111-1111', 'address 1'),
	(2, 'cust 2', '(222) 222-2222', 'address 2'),
	(3, 'cust 3', '(333) 333-3333', 'address 3'),
	(4, 'cust 4', '(444) 444-4444', 'address 4'),
	(5, 'cust 5', '(555) 555-5555', 'address 5');

	IF OBJECT_ID('dbo.CustomersStage', 'U') IS NOT NULL DROP TABLE dbo.
	CustomersStage;
	GO
	CREATE TABLE dbo.CustomersStage
	(
	custid INT NOT NULL,
	companyname VARCHAR(25) NOT NULL,
	phone VARCHAR(20) NOT NULL,
	address VARCHAR(50) NOT NULL,
	CONSTRAINT PK_CustomersStage PRIMARY KEY(custid)
	);
	--Test data
	INSERT INTO dbo.CustomersStage(custid, companyname, phone, address)
	VALUES
	(2, 'AAAAA', '(222) 222-2222', 'address 2'),
	(3, 'cust 3', '(333) 333-3333', 'address 3'),
	(5, 'BBBBB', 'CCCCC', 'DDDDD'),
	(6, 'cust 6 (new)', '(666) 666-6666', 'address 6'),
	(7, 'cust 7 (new)', '(777) 777-7777', 'address 7');

	--Acutal merge
	MERGE INTO dbo.Customers AS TRG
	USING dbo.CustomersStage AS SRC
		ON TRG.custid = SRC.custid
	WHEN MATCHED THEN 
		UPDATE
			SET TRG.companyname = SRC.companyname,
				TRG.phone = SRC.phone,
				TRG.address = SRC.address
	WHEN NOT MATCHED THEN
		INSERT(custid,
			   companyname,
			   phone,
			   address)
		VALUES( SRC.custid,
				SRC.companyname,
				SRC.phone,
			    SRC.address) --;(semi-colon is manditory)
	WHEN NOT MATCHED BY SOURCE THEN --Delete in target when no match in source
		DELETE;

		--Augmented merge
	MERGE INTO dbo.Customers AS TRG
	USING dbo.CustomersStage AS SRC
		ON TRG.custid = SRC.custid
	WHEN MATCHED AND (TRG.companyname <> SRC.companyname AND
					  TRG.phone <> SRC.phone AND
				      TRG.address <> SRC.address)
	THEN 
		UPDATE
			SET TRG.companyname = SRC.companyname,
				TRG.phone = SRC.phone,
				TRG.address = SRC.address
	WHEN NOT MATCHED THEN
		INSERT(custid,
			   companyname,
			   phone,
			   address)
		VALUES( SRC.custid,
				SRC.companyname,
				SRC.phone,
			    SRC.address) --;(semi-colon is manditory)
	WHEN NOT MATCHED BY SOURCE THEN --Delete in target when no match in source
		DELETE;
	select * from dbo.Customers


--OUTPUT CLAUSE

	IF OBJECT_ID('dbo.T1', 'U') IS NOT NULL DROP TABLE dbo.T1;
	CREATE TABLE dbo.T1
	(
		keycol INT NOT NULL IDENTITY(1, 1) CONSTRAINT PK_T1 PRIMARY KEY,
		datacol NVARCHAR(40) NOT NULL
	);

	--insert into T1 the result of a query against the HR.Employees table. To return
	--all newly generated identity values from the INSERT statement

	INSERT INTO dbo.T1(datacol)
	OUTPUT inserted.keycol, inserted.datacol
		SELECT lastname
		FROM HR.Employees
		WHERE country = N'USA';

	select * from HR.Employees
	where country = N'USA'
	
--COMPOSABLE DML


--XXX

	--1
		USE TSQL2012;
		IF OBJECT_ID('dbo.Customers', 'U') IS NOT NULL DROP TABLE dbo.Customers;
		CREATE TABLE dbo.Customers
		(
			custid INT NOT NULL PRIMARY KEY,
			companyname NVARCHAR(40) NOT NULL,
			country NVARCHAR(15) NOT NULL,
			region NVARCHAR(15) NULL,
			city NVARCHAR(15) NOT NULL
		);	

	--1.1
		INSERT INTO dbo.Customers(custid,companyname,country,region,city)
		VALUES(100,'Coho Winery','USA','WA','Redmond');

	--1.2