CREATE TABLE [dbo].[Adverts]
(
[ContentItemID] [int] NOT NULL,
[PlainTextRepresentation] [text] COLLATE Latin1_General_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Adverts] ADD CONSTRAINT [PK_Adverts] PRIMARY KEY CLUSTERED  ([ContentItemID])
GO
GRANT SELECT ON  [dbo].[Adverts] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[Adverts] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[Adverts] TO [ssc_webapplication]
GO
