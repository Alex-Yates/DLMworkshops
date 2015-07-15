CREATE TABLE [dbo].[SearchAnalyzerConfig]
(
[Word] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[Group] [int] NOT NULL
)
GO
ALTER TABLE [dbo].[SearchAnalyzerConfig] ADD CONSTRAINT [PK_SearchAnalyzerConfig] PRIMARY KEY CLUSTERED  ([Word])
GO
