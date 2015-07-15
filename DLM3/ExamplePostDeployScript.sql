-- Adds a dbo.DeploymentHistory table to a database if it does not already exist

IF OBJECT_ID(N'[dbo].[DeploymentHistory]', 'U') IS NULL
    CREATE TABLE [dbo].[DeploymentHistory]
        (
          [ID] [INT] NOT NULL
                     IDENTITY(1, 1) ,
          [Time] [DATETIME] NOT NULL
        )

-- Adds an entry into the dbo.DeploymentHistory with the current time

INSERT  INTO dbo.DeploymentHistory
        ( Time )
VALUES  ( GETDATE() 
          )