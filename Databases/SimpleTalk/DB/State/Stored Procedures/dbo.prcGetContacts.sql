
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[prcGetContacts]
AS
    SELECT  *
    FROM    Contacts

	-- v3
	-- this is a bad practice!!!

GO
