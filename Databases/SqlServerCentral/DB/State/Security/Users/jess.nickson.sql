IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'jess.nickson')
CREATE LOGIN [jess.nickson] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [jess.nickson] FOR LOGIN [jess.nickson]
GO
