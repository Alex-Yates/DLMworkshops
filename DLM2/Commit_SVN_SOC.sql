CREATE TABLE <myfirstname, varchar(500), Steve>
(   UserID int IDENTITY(1, 1) CONSTRAINT pk_myTable PRIMARY KEY 
  ,	firstname VARCHAR(500)
  , lastname VARCHAR(500)
  , title VARCHAR(200)
  , age TINYINT
  , employer VARCHAR(1000)
  , retirementdate date
);