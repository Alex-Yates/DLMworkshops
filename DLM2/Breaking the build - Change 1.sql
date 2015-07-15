ALTER PROCEDURE dbo.AddStopWord @Word NVARCHAR(5) 
AS 
 BEGIN 
  INSERT INTO dbo.SearchAnalyzerConfig 
          ( Word, [Group] ) 
  VALUES  ( @Word, 0 ) 

  SELECT @@ERROR AS 'atatError' 
 END 
GO 
