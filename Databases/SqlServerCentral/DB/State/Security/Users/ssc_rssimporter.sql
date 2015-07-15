IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'ssc_rssimporter')
CREATE LOGIN [ssc_rssimporter] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [ssc_rssimporter] FOR LOGIN [ssc_rssimporter] WITH DEFAULT_SCHEMA=[dbo]
GO
GRANT CONNECT TO [ssc_rssimporter]
