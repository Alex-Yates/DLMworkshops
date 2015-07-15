CREATE TABLE [dbo].[ArticlePrices]
(
[ArticlePricesID] [int] NOT NULL IDENTITY(1, 1),
[ArticlesID] [int] NULL,
[Price] [money] NULL,
[ValidFrom] [datetime] NULL CONSTRAINT [DF__ArticlePr__Valid__1CF15040] DEFAULT (getdate()),
[ValidTo] [datetime] NULL,
[Active] [char] (1) COLLATE Latin1_General_CI_AS NULL CONSTRAINT [DF__ArticlePr__Activ__1DE57479] DEFAULT ('N'),
[SalesPrice] [char] (1) COLLATE Latin1_General_CI_AS NULL
)
GO
ALTER TABLE [dbo].[ArticlePrices] ADD CONSTRAINT [PK_ArticlePrices] PRIMARY KEY CLUSTERED  ([ArticlePricesID])
GO
CREATE NONCLUSTERED INDEX [IX_ArticlePrices] ON [dbo].[ArticlePrices] ([ArticlesID])
GO
CREATE NONCLUSTERED INDEX [IX_ArticlePrices_1] ON [dbo].[ArticlePrices] ([ValidFrom])
GO
CREATE NONCLUSTERED INDEX [IX_ArticlePrices_2] ON [dbo].[ArticlePrices] ([ValidTo])
GO
ALTER TABLE [dbo].[ArticlePrices] ADD CONSTRAINT [FK_ArticlePrices] FOREIGN KEY ([ArticlesID]) REFERENCES [dbo].[Articles] ([ArticlesID])
GO
DENY REFERENCES ON  [dbo].[ArticlePrices] TO [public]
GRANT SELECT ON  [dbo].[ArticlePrices] TO [public]
DENY INSERT ON  [dbo].[ArticlePrices] TO [public]
DENY DELETE ON  [dbo].[ArticlePrices] TO [public]
DENY UPDATE ON  [dbo].[ArticlePrices] TO [public]
GO
EXEC sp_addextendedproperty N'MS_Description', N'How much was paid for the article', 'SCHEMA', N'dbo', 'TABLE', N'ArticlePrices', NULL, NULL
GO
