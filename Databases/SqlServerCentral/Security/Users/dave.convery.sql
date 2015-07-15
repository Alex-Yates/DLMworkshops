IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'dave.convery')
CREATE LOGIN [dave.convery] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [dave.convery] FOR LOGIN [dave.convery]
GO
