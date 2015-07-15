CREATE TABLE [dbo].[BadEmailAddresses]
(
[EmailAddress] [nvarchar] (450) COLLATE Latin1_General_CI_AS NOT NULL,
[AddedDate] [datetime] NOT NULL
)
GO
ALTER TABLE [dbo].[BadEmailAddresses] ADD CONSTRAINT [PK_BadEmailAddresses] PRIMARY KEY CLUSTERED  ([EmailAddress])
GO
