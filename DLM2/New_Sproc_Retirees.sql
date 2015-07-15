CREATE PROCEDURE spGetRetiredUsers
AS

SELECT
  firstname
  , lastname
  , retirementdate
  FROM <myfirstname, varchar(200), Steve>
  WHERE retirementdate < GETDATE();

RETURN

GO
