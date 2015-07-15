-- allow question categories TO be weighted
ALTER TABLE dbo.UserPoints
 ADD pointweight NUMERIC(3, 1);
 GO
-- update with default points
UPDATE dbo.UserPoints
  SET pointweight = 1
  WHERE pointweight IS NULL;
GO
-- update specific categories as a default.
UPDATE dbo.UserPoints
  SET pointweight = 1.4
  WHERE PointsCategory = 3;
GO

-- check
SELECT userid, SUM( PointsScored * pointweight)
 FROM userpoints 
 GROUP BY UserID

