CREATE TABLE [dbo].[ArticleReferences]
(
[ArticlesID] [int] NOT NULL IDENTITY(1, 1),
[Reference] [varchar] (50) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'References listed in an article', 'SCHEMA', N'dbo', 'TABLE', N'ArticleReferences', NULL, NULL
GO

ALTER TABLE [dbo].[ArticleReferences] ADD 
CONSTRAINT [PK_ArticleReferences] PRIMARY KEY CLUSTERED  ([ArticlesID]) ON [PRIMARY]
ALTER TABLE [dbo].[ArticleReferences] ADD
CONSTRAINT [FK_Articles] FOREIGN KEY ([ArticlesID]) REFERENCES [dbo].[Articles] ([ArticlesID])
GO
