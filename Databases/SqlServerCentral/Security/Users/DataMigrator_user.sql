IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'DataMigrator_user')
CREATE LOGIN [DataMigrator_user] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [DataMigrator_user] FOR LOGIN [DataMigrator_user]
GO
