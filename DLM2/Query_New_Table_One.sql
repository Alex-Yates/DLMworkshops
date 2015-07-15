CREATE PROCEDURE sp<myfirstname, varchar(200), Steve>_GetByID
  @UserID int = NULL
AS

IF @UserID IS NOT null
  SELECT top 10
    UserID
  , firstname
  , lastname
  , title
  , age
  , employer
  , retirementdate
   FROM <myfirstname, varchar(200), Steve>
   WHERE UserID = @UserID;

RETURN

GO
