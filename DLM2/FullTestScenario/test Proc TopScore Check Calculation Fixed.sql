USE [SqlServerCentral_Dev]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--  Comments here are associated with the test.
--  For test case examples, see: http://tsqlt.org/user-guide/tsqlt-tutorial/
ALTER PROCEDURE [tsqltPoints].[test Proc TopScore Check Calculation]
AS
BEGIN
  --Assemble
  CREATE TABLE tsqltPoints.Actual 
          ( RowNumber int
          , UserID int
          , DisplayName nvarchar(100)
          , RecentPoints int
		  , AllPoints int
          );

  CREATE TABLE tsqltPoints.Expected 
          ( RowNumber int
          , UserID int
          , DisplayName nvarchar(100)
          , RecentPoints int
		  , AllPoints int
          );

  INSERT tsqltPoints.Expected
          ( RowNumber 
          , UserID 
          , DisplayName 
          , RecentPoints
		  , AllPoints
          )
      VALUES (1, 1, 'Steve', 6, 6)
	       , (2, 2, 'Andy', 3, 3)
		   , (3, 4, 'Billy', 2, 2)
		   , (4, 3, 'Brian', 1, 1)

  EXEC tsqlt.FakeTable @TableName = N'Users';
  INSERT dbo.Users
          ( UserID 
		  , DisplayName 
          )
      VALUES
          ( 1, 'Steve')
		, ( 2, 'Andy')
		, ( 3, 'Brian')
		, ( 4, 'Billy')
		, ( 5, 'Greg')

  EXEC tsqlt.FakeTable @TableName = N'Userpoints';
  INSERT dbo.UserPoints
          ( UserID
          , Date
          , PointsScored
          , PointsCategory
		  , pointweight
          )
      VALUES
          ( 1, '2/1/2015', 1, 1, 1 )
		, ( 1, '2/2/2015', 3, 2, 1 )
		, ( 1, '2/3/2015', 2, 3, 1 )
		, ( 2, '2/1/2015', 2, 1, 1 )
		, ( 2, '2/2/2015', 1, 2, 1 )
		, ( 3, '2/1/2015', 1, 1, 1 )
		, ( 3, '2/2/2015', 0, 2, 1 )
		, ( 4, '2/1/2015', 2, 1, 1 )
		, ( 5, '2/2/2015', 0, 2, 1 )

  --Act
  --  Execute the code under test like a stored procedure, function or view
  --  and capture the results in variables or tables.
  INSERT tsqltPoints.Actual 
   EXEC dbo.TopScores @CutoffDate = '2/1/2015', -- smalldatetime
      @PointsCategory = null, -- int
      @AdditionalUser = 0, -- int
      @MaxResults = 4 -- int
  

  --Assert
  --  Compare the expected and actual values, or call tSQLt.Fail in an IF statement.  
  --  Available Asserts: tSQLt.AssertEquals, tSQLt.AssertEqualsString, tSQLt.AssertEqualsTable
  --  For a complete list, see: http://tsqlt.org/user-guide/assertions/
  EXEC tSQLt.AssertEqualsTable @Expected = N'tsqltPoints.Expected', -- nvarchar(max)
      @Actual = N'tsqltPoints.Actual', -- nvarchar(max)
      @FailMsg = N'#FAIL' -- nvarchar(max)
 
  
END;


