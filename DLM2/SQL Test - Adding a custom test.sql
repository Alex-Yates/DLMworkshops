USE [SqlServerCentral_Dev]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [UnitTests].[test proc AddStopWord]
AS
BEGIN

-- Create a fake table
EXEC tSQLt.FakeTable 'dbo.SearchAnalyzerConfig';
 
-- Populate a record using the procedure I'm testing
EXEC dbo.AddStopWord @Word = N'TheStopWordIWanted'

-- Specify the actual results
DECLARE @ActualWord CHAR(50);
SET @ActualWord = (SELECT Word FROM dbo.SearchAnalyzerConfig);
 
-- Verify that the actual results corresponds to the expected results
EXEC tSQLt.AssertEquals @Expected = 'TheStopWordIWanted', @Actual = @ActualWord;

END;
