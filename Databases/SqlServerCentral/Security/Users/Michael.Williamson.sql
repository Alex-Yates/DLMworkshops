IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'Michael.Williamson')
CREATE LOGIN [Michael.Williamson] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [Michael.Williamson] FOR LOGIN [Michael.Williamson]
GO
