ALTER PROCEDURE sp<myfirstname, varchar(200), Steve>_GetAll
AS
SELECT top 10
  UserID
, UserName = RTRIM(firstname) + ' ' + RTRIM(lastname)
, title
, age
, employer
, retirementdate
 FROM <myfirstname, varchar(200), Steve>;

RETURN

GO
