CREATE PROCEDURE sp<myfirstname, varchar(200), Steve>_ChangeName
    @UserID int = NULL
  , @First varchar(200) = NULL
  , @Last varchar(200) = null
AS

IF @UserID IS NULL
  BEGIN
    THROW 51001, 'A UserID must be supplied', 1
	RETURN 0
  END

IF @First IS NOT NULL
  UPDATE <myfirstname, varchar(200), Steve>
   SET Firstname = @first
   WHERE UserID = @UserID;

IF @Last IS NOT NULL
  UPDATE <myfirstname, varchar(200), Steve>
   SET Lastname = @Last
   WHERE UserID = @UserID;

RETURN

GO

-- sp<myfirstname, varchar(200), Steve>_ChangeName 1, 'Steven', null