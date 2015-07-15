CREATE TABLE [dbo].[Users]
(
[UserID] [int] NOT NULL IDENTITY(1, 1),
[SingleSignonMemberID] [int] NOT NULL,
[EmailAddress] [nvarchar] (250) COLLATE Latin1_General_CI_AS NOT NULL,
[DisplayName] [nvarchar] (100) COLLATE Latin1_General_CI_AS NOT NULL,
[CompanyID] [int] NULL,
[Biography] [text] COLLATE Latin1_General_CI_AS NULL,
[Address] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL,
[PostCode] [nvarchar] (30) COLLATE Latin1_General_CI_AS NULL,
[Country] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL,
[AuthorFirstName] [varchar] (100) COLLATE Latin1_General_CI_AS NULL,
[AuthorLastName] [varchar] (100) COLLATE Latin1_General_CI_AS NULL,
[AuthorFullName] [varchar] (200) COLLATE Latin1_General_CI_AS NULL,
[AuthorForumID] [int] NULL,
[IsRegularAuthor] [bit] NOT NULL CONSTRAINT [DF_Users_IsRegularAuthor] DEFAULT ((0)),
[LastLoginDate] [datetime] NOT NULL,
[PaymentDetails] [nvarchar] (500) COLLATE Latin1_General_CI_AS NULL
)
CREATE UNIQUE NONCLUSTERED INDEX [IX_UsersDisplayName] ON [dbo].[Users] ([DisplayName])

CREATE NONCLUSTERED INDEX [IX_UsersDisplayNameUserID] ON [dbo].[Users] ([UserID], [DisplayName])

GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED  ([UserID])
GO
CREATE NONCLUSTERED INDEX [IX_AuthorNames] ON [dbo].[Users] ([AuthorFullName])
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_UsersEmailAddress] ON [dbo].[Users] ([EmailAddress])
GO
CREATE NONCLUSTERED INDEX [IX_UsersSSOID] ON [dbo].[Users] ([SingleSignonMemberID])
GO
GRANT SELECT ON  [dbo].[Users] TO [ForumsUser]
GRANT SELECT ON  [dbo].[Users] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[Users] TO [ssc_webapplication]
GRANT DELETE ON  [dbo].[Users] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[Users] TO [ssc_webapplication]
GO
