IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'ssc_update')
CREATE LOGIN [ssc_update] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [ssc_update] FOR LOGIN [ssc_update]
GO
