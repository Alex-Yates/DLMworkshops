SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--SET QUOTED_IDENTIFIER ON|OFF
--SET ANSI_NULLS ON|OFF
--GO

CREATE PROCEDURE [dbo].[prcGetUKContacts]
	--@parameter_name AS scalar_data_type ( = default_value ), ...
-- WITH ENCRYPTION, RECOMPILE, EXECUTE AS CALLER|SELF|OWNER| 'user_name'
AS
	
	SELECT  ContactsID ,
            ContactFullName ,
            PhoneWork ,
            PhoneMobile ,
            Address1 ,
            Address2 ,
            Address3 ,
            CountryCode ,
            JoiningDate ,
            ModifiedDate ,
            Email ,
            LinkedIn
    FROM    dbo.Contacts
    WHERE   CountryCode = 'GB';
GO
