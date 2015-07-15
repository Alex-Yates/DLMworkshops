IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'ssc_searchindexer')
CREATE LOGIN [ssc_searchindexer] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [ssc_searchindexer] FOR LOGIN [ssc_searchindexer] WITH DEFAULT_SCHEMA=[dbo]
GO
GRANT CONNECT TO [ssc_searchindexer]
