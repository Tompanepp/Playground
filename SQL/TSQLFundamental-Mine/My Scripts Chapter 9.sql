USE TSQL2012;
	--TRANSACTIONS
		-- Start a new transaction
			BEGIN TRAN;
				-- Declare a variable
				DECLARE @neworderid AS INT;
				-- Insert a new order into the Sales.Orders table
				INSERT INTO Sales.Orders
				(custid, empid, orderdate, requireddate, shippeddate,
				shipperid, freight, shipname, shipaddress, shipcity,
				shippostalcode, shipcountry)
				VALUES
				(85, 5, '20090212', '20090301', '20090216',
				3, 32.38, N'Ship to 85-B', N'6789 rue de l''Abbaye', N'Reims',
				N'10345', N'France');

				-- Save the new order ID in a variable
				SET @neworderid = SCOPE_IDENTITY();
				-- Return the new order ID

				SELECT @neworderid AS neworderid;
				-- Insert order lines for the new order into Sales.OrderDetails
				INSERT INTO Sales.OrderDetails
				(orderid, productid, unitprice, qty, discount)
				VALUES(@neworderid, 11, 14.00, 12, 0.000),
				(@neworderid, 42, 9.80, 10, 0.000),
				(@neworderid, 72, 34.80, 5, 0.000);
			-- Commit the transaction
			COMMIT TRAN;
		
		--LOCKS AND BLOCKING
			--READ LOCK COMPATABILITY
			--dynamic management view (DMV)
			--Locks
				--Exclusive
				--Shared
				--Intent Exclusive
				--Intent Shared

			--Example to troubleshoot long lock waits
			--Connection 1
			BEGIN TRAN;
				UPDATE Production.Products
				SET unitprice += 1.00
				WHERE productid = 2;
			--Note the transaction is not closed(i.e COMMITTED
			--UPDATES require an Exclusive lock\

			--Connection 2
			SELECT productid, unitprice
			FROM Production.Products -- WITH (READCOMMITTEDLOCK)
			WHERE productid = 2;
			--READCOMMITTEDLOCK requires the row to be committed
				--DEALING WITH THE WAITING

					--Kill the blocker using the Kill command 
						--KILL <spid> -- Causes a rollback of the killed process

					--Set a request timeout
					SET LOCK_TIMEOUT 5000;--Time in miliseconds(i.e 5sec) "-1" for no timeout
					SELECT productid, unitprice
					FROM Production.Products -- WITH (READCOMMITTEDLOCK)
					WHERE productid = 2;
						
						--NB: Lock timeouts do not rollback transactions 
			--Connection 3

			--Gets lock information i.e. locks granted and locked being waited for and the sessions etc..
			SELECT -- use * to explore other available attributes
			request_session_id AS spid,
			resource_type AS restype,
			resource_database_id AS dbid,
			DB_NAME(resource_database_id) AS dbname,
			resource_description AS res,
			resource_associated_entity_id AS resid,
			--OBJECT_NAME(133575514) AS RequestedIbject,
			request_mode AS mode,
			request_status AS status	
			FROM sys.dm_tran_locks;	--Only gives informatino about the IDs of the processes(Sessions) involved in the blocking

			--Resouse type "KEY" refers to a row

				--Session
				@@SPID

			--Information about the connectins
			SELECT -- use * to explore
			session_id AS spid,
			connect_time,
			last_read,
			last_write,
			most_recent_sql_handle
			FROM sys.dm_exec_connections
			WHERE session_id IN(56, 55);

			--Retrieving last batch of code executed by a session(SPID)
			SELECT session_id, text
			FROM sys.dm_exec_connections
			CROSS APPLY sys.dm_exec_sql_text(most_recent_sql_handle) AS ST
			WHERE session_id IN(55, 56);

			select * from sys.dm_exec_connections


			--Session information
			SELECT -- use * to explore
			session_id AS spid,
			login_time,
			host_name,
			program_name,
			login_name,
			nt_user_name,
			last_request_start_time,
			last_request_end_time
			FROM sys.dm_exec_sessions
			WHERE session_id IN(55, 56);

			--Activer request
			SELECT -- use * to explore
			session_id AS spid,
			blocking_session_id,
			command,
			sql_handle,
			database_id,
			wait_type,
			wait_time,
			wait_resource
			FROM sys.dm_exec_requests
			WHERE blocking_session_id > 0;

			select * from sys.dm_exec_sql_text(0x0200000063FC7D052E09844778CDD615CFE7A2D1FB4118020000000000000000000000000000000000000000)

			--DYNAMIC MANAGEMENT VIEWS(There are more)
				--sys.dm_tran_locks --Sessions IDs and Locks
				--sys.dm_exec_connections --Session ID and Connection info(connection time) : Connection Infor(ports, encryption, protocol)
						--[Network Transport Layer type stuff]
				--sys.dm_exec_sessions -- Session ID and Sesssion Info(server login, WindowNT user, lastrequest start and end time)
										--: Login Information
				--sys.dm_exec_requests --Session ID and Request Information (lastwrite, lastread, sql handle) : Info around requests executed
				--sys.dm_exec_sql_text --Session ID and last executed query

		--ISOLATION LEVELS
			--Row versioning(Optimistic concurrency control)
			--Locking(pessimistic concurrency control)

			--Def:
				--Determine behaviour 
					--of concurrent users 
						--who read or write data
				--Can be set a Session or Row level

			--Writer behaviour in relation to locks(type of locks they take and duration) cannot be determined
				--Reader behviour can be controlled
					--(This can be used to "influence" writer behaviour) : Using Isolation Levels

			--Setting Isolation levels
				--Session: SET TRANSACTION ISOLATION LEVEL <isolation level name> --Isolcation Level name MUST have spaces
				--Query(Use hints): SELECT ... FROM <TABLE> WITH (<IsolationLevel>) --Isolcation Level name CANNOT have spaces
						--NOLOCK is the equivalent of specifying READUNCOMMITTED, 
							--and HOLDLOCK is the equivalent of specifying SERIALIZABLE

			--Types of Isolation Levels
				--Locking(pessimistic concurrency control) based
					--READUNCOMMITED
					--READCOMMITTED(Default on premise SQL instance option)
					--REPEATABLE READ
					--SERIALIZABLE
					--NB: The higher the isolation level, the tougher the locks used request and longer the duration (resulting in higher the consistency)
				--Row versioning(Optimistic concurrency control) based
					--SNAPSHOT
					--READ COMMITTED SNAPSHOT(defautl SQL database option)
						--optimistic-concurrency-based counterparts of READ COMMITTED(SNAPSHOT) and SERIALIZABLE(READ COMMITTED SNAPSHOT), respectively.

				--Locking(pessimistic concurrency control) based
					--READUNCOMMITED: ---Lowest isolation level
									  --Transaction does not request shared lock
									  --Never inteferes with transaction holding an exclusive lock
									  --This results in DIRTY READS(Reading Data that is not committed,essentially not a true reflection of the 
											--database post any other transactions executing
												
											--There are a couple of types of dirty read(read up on them)
							 
					--READCOMMITTED(Default on premise SQL instance option)
						--Needs a shared lock
						--Waits for exclusive lock transaction to finish(commit or rollback)
						--Lock Duration: held for "length of read", then released.Not held until Transaction nor statement completes 
							--Another Transaction can lock and change the data
							--A subsequent read (in the same transaction) would be different from the other
								--These are called NON REPEATABLE READS or inconsistent analysis
					--REPEATABLE READ
						--Secures a Shared Lock for the transaction until it ends
							--Preventing Writers to get an Exclusive lock and alter values
						--The locks only locks rows the transaction "found" on the first read
							--New rows could be added
							--The second read might retrieve them(if they match the criteria)
								--These are called PHANTOM READS 
					--SERIALIZABLE
						--Same as REPEATABLE READ
							--Futhermore locks any new rows that match the reader's filter(these new rows cannot be added)
								--Locks a range of KEYS

		--SOMETHING TO NOTE
			--REPEATABLE READS AND SERIALIZABLE control reading?? (Dealing with Non-repetable and Phantom reads)
				--SERIALIZABLE controls INSERTS(locks range)
--EXERCISES

--1.
	--1.1

	BEGIN TRAN;
	UPDATE Sales.OrderDetails
	SET discount = 0.05
	WHERE orderid = 10249;

	--1.2
		SELECT orderid, productid, unitprice, qty, discount
		FROM Sales.OrderDetails WITH (READCOMMITTEDLOCK)
		WHERE orderid = 10249;

	--1.3 locks
		SELECT -- use * to explore
		request_session_id AS spid,
		resource_type AS restype,
		resource_database_id AS dbid,
		resource_description AS res,
		resource_associated_entity_id AS resid,
		request_mode AS mode,
		request_status AS status
		FROM sys.dm_tran_locks;

	--1.4.

	-- Connection info:
		SELECT -- use * to explore
		session_id AS spid,
		connect_time,
		last_read,
		last_write,
		most_recent_sql_handle
		FROM sys.dm_exec_connections
		WHERE session_id IN(52, 53);

	-- Session info
		SELECT -- use * to explore
		session_id AS spid,
		login_time,
		host_name,
		program_name,
		login_name,
		nt_user_name,
		last_request_start_time,
		last_request_end_time
		FROM sys.dm_exec_sessions
		WHERE session_id IN(52, 53);

	-- Blocking
		SELECT -- use * to explore
		session_id AS spid,
		blocking_session_id,
		command,
		sql_handle,
		database_id,
		wait_type,
		wait_time,
		wait_resource
		FROM sys.dm_exec_requests
		WHERE blocking_session_id > 0;


	--1-5
	--Run the following code to obtain the SQL text of the connections involved in the blocking chain.
	SELECT session_id, text
	FROM sys.dm_exec_connections
	CROSS APPLY sys.dm_exec_sql_text(most_recent_sql_handle) AS ST
	WHERE session_id IN(55, 56);

	--1-6
	--Run the following code in Connection 1 to roll back the transaction.
	ROLLBACK TRAN;
	--Observe in Connection 2 that the SELECT query returned the two order detail rows, and that those
	--rows were not modified.
	--Remember that if you need to terminate the blocker’s transaction, you can use the KILL command.
	--Close all connections.
	--Exercises 2-1 through 2-6 deal with isolation levels.

--2.1 READ UNCOMMITT
	--In this exercise, you will practice using the READ UNCOMMITTED isolation level

	--2.1.a Open two connections
	--2.1.b
	BEGIN TRAN;
		UPDATE Sales.OrderDetails
			SET discount += 0.05
		WHERE orderid = 10249;

		SELECT orderid, productid, unitprice, qty, discount
		FROM Sales.OrderDetails
		WHERE orderid = 10249;

	--2.1.c
	--Run the following code in Connection 2 to set the isolation level to READ UNCOMMITTED and query
	--Sales.OrderDetails.
		SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

		SELECT orderid, productid, unitprice, qty, discount
		FROM Sales.OrderDetails
		WHERE orderid = 10249;
	--Notice that you get the modified, uncommitted version of the rows. NB!!NB!!NB!!

	--2-1.d Roll back Update and see that the SELECT changes
		--NB: Reading data that was never committed, and 
			--potentially rolled back,
				--thus incorrect

--2.2 READ COMMITTED

	---2-2a
	--Run the following code in Connection 1 to update rows in Sales.OrderDetails and query it.

		BEGIN TRAN;
		UPDATE Sales.OrderDetails
		SET discount += 0.05
		WHERE orderid = 10249;

		SELECT orderid, productid, unitprice, qty, discount
		FROM Sales.OrderDetails
		WHERE orderid = 10249;


	--2-2b
	--Run the following code in Connection 2 to set the isolation level to READ COMMITTED and query
	--Sales.OrderDetails. (Remember to uncomment the hint if you are running against SQL Database.)
	SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
	SELECT orderid, productid, unitprice, qty, discount
	FROM Sales.OrderDetails -- WITH (READCOMMITTEDLOCK)
	WHERE orderid = 10249;

	--Notice you get blocked. This requires that a Shared Lock be acquired before reading(No uncommitted reads here)
		--The lock is held only for DATA ACCESS then released, thereafter changes to the rows can happen(Resulting
				--in Non-repeatable reads)

--2-3
--In this exercise, you will practice using the REPEATABLE READ isolation level.

	--2-3a
	SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
	BEGIN TRAN;
	SELECT orderid, productid, unitprice, qty, discount
	FROM Sales.OrderDetails
	WHERE orderid = 10249;

	--2.3b
	UPDATE Sales.OrderDetails
	SET discount += 0.05
	WHERE orderid = 10249;
	--This gets blocked

--2-4
--In this exercise, you will practice using the SERIALIZABLE isolation level.

	--2.4a
	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
	BEGIN TRAN;
	SELECT orderid, productid, unitprice, qty, discount
	FROM Sales.OrderDetails
	WHERE orderid = 10249;

	--2.4b
	INSERT INTO Sales.OrderDetails
	(orderid, productid, unitprice, qty, discount)
	VALUES(10249, 2, 19.00, 10, 0.00);

	--2-4f
	--Run the following code in both Connection 1 and Connection 2 to set the isolation level to the default.
	SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

--2-5
--In this exercise, you will practice using the SNAPSHOT isolation level.

--2-5a
--If you’re doing the exercises against an on-premises SQL Server instance, run the following code to
--set the SNAPSHOT isolation level in the TSQL2012 database (enabled in SQL Database by default):
	ALTER DATABASE TSQL2012 SET ALLOW_SNAPSHOT_ISOLATION ON; 
	--NB: Dont run it, just to try
		--You need to run this, produces error on an on-premises if not 

--2-5b
--Run the following code in Connection 1 to open a transaction, update rows in Sales.OrderDetails, and
--query it.
	BEGIN TRAN;
		UPDATE Sales.OrderDetails
		SET discount += 0.05
		WHERE orderid = 10249;

		SELECT orderid, productid, unitprice, qty, discount
		FROM Sales.OrderDetails
		WHERE orderid = 10249;

--2-5c
--Notice you're not blocked, an earlier consistent row is returned

	SET TRANSACTION ISOLATION LEVEL SNAPSHOT;
	BEGIN TRAN;
	SELECT orderid, productid, unitprice, qty, discount
	FROM Sales.OrderDetails
	WHERE orderid = 10249; --Gets Discount = 0.00 : The last committed version when the TRANSACTION begin

	--NB: This transaction needs to COMMIT first, before it can access the new values, because
		--ISOLATION LEVEL SNAPSHOT returns the last committed  version when the TRANSACTION BEGIN

--2-6
--In this exercise, you will practice using the READ COMMITTED SNAPSHOT isolation level.

	--2.6a 
	ALTER DATABASE TSQL2012 SET READ_COMMITTED_SNAPSHOT ON;
	--Changes default SQL Server setting: READ COMMITTED is interpreted as READ COMMITTED SNAPSHOT

	--2-6c
	--Run the following code in Connection 1 to open a transaction, update rows in Sales.OrderDetails, and
	--query it.
	BEGIN TRAN;
		UPDATE Sales.OrderDetails
		SET discount += 0.05
		WHERE orderid = 10249;
		SELECT orderid, productid, unitprice, qty, discount
		FROM Sales.OrderDetails
		WHERE orderid = 10249;


--NB:ALTER DATABASE TSQL2012 SET READ_COMMITTED_SNAPSHOT OFF;
--SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
----Note the syntax difference

	--2.6d

	BEGIN TRAN;
	SELECT orderid, productid, unitprice, qty, discount
	FROM Sales.OrderDetails
	WHERE orderid = 10249;


--2-6h
--If you are running against an on-premises SQL Server instance, change the database flags back to the
--defaults, disabling isolation levels based on row versioning.
ALTER DATABASE TSQL2012 SET ALLOW_SNAPSHOT_ISOLATION OFF;
ALTER DATABASE TSQL2012 SET READ_COMMITTED_SNAPSHOT OFF;

--DEADLOCKS

--3.1
	--Two windows

--3.2
--Run the following code in Connection 1 to open a transaction and update the row for product 2 in
--Production.Products.

BEGIN TRAN;
	UPDATE Production.Products
	SET unitprice += 1.00
	WHERE productid = 2;

--3.3 Run the following code in Connection 2 to open a transaction and update the row for product 3 in
--Production.Products.

BEGIN TRAN;
	UPDATE Production.Products
	SET unitprice += 1.00
	WHERE productid = 3;

--3-4
--Run the following code in Connection 1 to query product 3. You will be blocked. (Remember to uncomment
--the hint if you are connected to SQL Database.)
	SELECT productid, unitprice
	FROM Production.Products WITH (READCOMMITTEDLOCK)
	WHERE productid = 3;

--3-5
--Run the following code in Connection 2 to query product 2. You will be blocked, and a deadlock error
--will be generated either in Connection 1 or Connection 2.
	SELECT productid, unitprice
	FROM Production.Products WITH (READCOMMITTEDLOCK)
	WHERE productid = 2;

--NB: To fix this, make sure the transactions do not access the resources in an inverse order
	--i.e Transaction A accessing resid 2 (then accessing resid 3) 
		--Transaction B accessing resid 3 (then accessing resid 2)
		--instead
		--i.e Transaction A access resid 2 (then accessing resid 3) 
			--Transaction B access resid 2 (then accessing resid 3)

	--Transaction A will block Transction B from getting an exclusive lock
	--Blocking is better than deadlocking
	

