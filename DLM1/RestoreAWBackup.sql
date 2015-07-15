BACKUP DATABASE AdventureWorks2012_Dev
	TO DISK = 'C:\DLM1\AWBackup.Bak'

RESTORE DATABASE AdventureWorks2012_DevBob FROM DISK = 'C:\DLM1\AWBackup.bak'
WITH REPLACE,
     MOVE 'AdventureWorks2012_Data' TO 'C:\Program Files\Microsoft SQL Server\MSSQL12.DEV\MSSQL\DATA\AdventureWorks2012_DataBob.mdf',
     MOVE 'AdventureWorks2012_Log'  TO 'C:\Program Files\Microsoft SQL Server\MSSQL12.DEV\MSSQL\DATA\AdventureWorks2012_LogBob.ldf'