CREATE TABLE [dbo].[Blogs]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Slug] [nvarchar] (255) COLLATE Latin1_General_CI_AS NOT NULL,
[Title] [nvarchar] (255) COLLATE Latin1_General_CI_AS NOT NULL,
[IconFileID] [int] NULL,
[UserID] [int] NULL,
[AuthorBiography] [nvarchar] (1000) COLLATE Latin1_General_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[Blogs] ADD CONSTRAINT [PK__Blogs__3214EC07662B2B3B] PRIMARY KEY CLUSTERED  ([Id])
GO
ALTER TABLE [dbo].[Blogs] ADD CONSTRAINT [UQ__Blogs__BC7B5FB6690797E6] UNIQUE NONCLUSTERED  ([Slug])
GO
ALTER TABLE [dbo].[Blogs] ADD CONSTRAINT [FK9758454B8C1B080] FOREIGN KEY ([IconFileID]) REFERENCES [dbo].[Files] ([FileID])
GO
ALTER TABLE [dbo].[Blogs] ADD CONSTRAINT [FK54A77FE154A2F41C] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
GO
GRANT SELECT ON  [dbo].[Blogs] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[Blogs] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[Blogs] TO [ssc_webapplication]
GO
