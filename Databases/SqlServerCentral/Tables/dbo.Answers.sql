CREATE TABLE [dbo].[Answers]
(
[AnswerID] [int] NOT NULL IDENTITY(1, 1),
[ContentItemID] [int] NOT NULL,
[AnswerText] [varchar] (500) COLLATE Latin1_General_CI_AS NOT NULL,
[IsCorrect] [bit] NOT NULL,
[SortOrder] [int] NOT NULL
)
GO
ALTER TABLE [dbo].[Answers] ADD CONSTRAINT [PK_Answers] PRIMARY KEY CLUSTERED  ([AnswerID])
GO
ALTER TABLE [dbo].[Answers] ADD CONSTRAINT [FK_Answers_Questions] FOREIGN KEY ([ContentItemID]) REFERENCES [dbo].[Questions] ([ContentItemID]) ON DELETE CASCADE
GO
GRANT SELECT ON  [dbo].[Answers] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[Answers] TO [ssc_webapplication]
GRANT DELETE ON  [dbo].[Answers] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[Answers] TO [ssc_webapplication]
GO
