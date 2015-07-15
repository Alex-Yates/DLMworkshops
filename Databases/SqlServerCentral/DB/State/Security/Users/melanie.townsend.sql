IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'melanie.townsend')
CREATE LOGIN [melanie.townsend] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [melanie.townsend] FOR LOGIN [melanie.townsend]
GO
