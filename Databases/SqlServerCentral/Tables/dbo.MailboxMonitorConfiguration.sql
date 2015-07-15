CREATE TABLE [dbo].[MailboxMonitorConfiguration]
(
[ID] [int] NOT NULL,
[MailboxAddress] [varchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[MailBoxPassword] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[MailServer] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[AccountType] [tinyint] NULL
)
GO
ALTER TABLE [dbo].[MailboxMonitorConfiguration] ADD CONSTRAINT [PK_UnsubscribeConfiguration] PRIMARY KEY CLUSTERED  ([ID])
GO
