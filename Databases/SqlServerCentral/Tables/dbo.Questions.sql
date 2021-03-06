CREATE TABLE [dbo].[Questions]
(
[ContentItemID] [int] NOT NULL,
[PointsValue] [int] NOT NULL,
[Explanation] [text] COLLATE Latin1_General_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[Questions] ADD CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED  ([ContentItemID])
GO
ALTER TABLE [dbo].[Questions] ADD CONSTRAINT [FK_Questions_ContentItems] FOREIGN KEY ([ContentItemID]) REFERENCES [dbo].[ContentItems] ([ContentItemID]) ON DELETE CASCADE
GO
GRANT SELECT ON  [dbo].[Questions] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[Questions] TO [ssc_webapplication]
GRANT DELETE ON  [dbo].[Questions] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[Questions] TO [ssc_webapplication]
GO
