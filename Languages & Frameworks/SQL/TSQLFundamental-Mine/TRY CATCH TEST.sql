
--Testing if the whole statements in the TRY will not be written if one fails
	--CONCLUSION: None were written
	--Implicit batch?

--Testing if after one fails will the subesequent ones be excuted
	--PRINT 'Contuiing to Corret2 INSERT' is never excuted, hence none of the subsequent are executed\
	BEGIN TRY
		INSERT INTO dbo.T1 (keycol, datacol)
		VALUES(NEXT VALUE FOR seqOBJ,'Correct1')

		INSERT INTO dbo.T1 (keycol, datacol)
		VALUES('Incorrect1', 1)
	
		PRINT 'Contuiing to Corret2 INSERT'
		INSERT INTO dbo.T1 (keycol, datacol)
		VALUES(NEXT VALUE FOR seqOBJ, 'Correct2')

		INSERT INTO dbo.T1 (keycol, datacol)
		VALUES('Incorrect2', NEXT VALUE FOR seqOBJ)

	END TRY
	BEGIN CATCH
		PRINT 'I failed at Inset 2'
	END CATCH

	--Implicit batch?
	BEGIN TRY
		INSERT INTO dbo.T1 (keycol, datacol)
		VALUES(NEXT VALUE FOR seqOBJ,'Correct1')
		GO;-- Doesn't work, cant batch inside, because the entire TRY is one batch

		INSERT INTO dbo.T1 (keycol, datacol)
		VALUES('Incorrect1', 1)
	
		PRINT 'Contuiing to Corret2 INSERT'
		INSERT INTO dbo.T1 (keycol, datacol)
		VALUES(NEXT VALUE FOR seqOBJ, 'Correct2')

		INSERT INTO dbo.T1 (keycol, datacol)
		VALUES('Incorrect2', NEXT VALUE FOR seqOBJ)

	END TRY
	BEGIN CATCH
		PRINT 'I failed at Inset 2'
	END CATCH