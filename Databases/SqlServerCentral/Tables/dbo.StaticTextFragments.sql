CREATE TABLE [dbo].[StaticTextFragments]
(
[StaticTextFragmentID] [int] NOT NULL IDENTITY(1, 1),
[KeyText] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[StaticText] [varchar] (8000) COLLATE Latin1_General_CI_AS NULL,
[ContainsTokens] [bit] NOT NULL
)
GO
ALTER TABLE [dbo].[StaticTextFragments] ADD CONSTRAINT [PK_StaticTextFragments] PRIMARY KEY CLUSTERED  ([StaticTextFragmentID])
GO
GRANT SELECT ON  [dbo].[StaticTextFragments] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[StaticTextFragments] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[StaticTextFragments] TO [ssc_webapplication]
GO
