CREATE TABLE [dbo].[Files]
(
[FileID] [int] NOT NULL,
[FileName] [varchar] (250) COLLATE Latin1_General_CI_AS NOT NULL,
[FileExtension] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[SizeInBytes] [bigint] NOT NULL,
[CreatedDate] [datetime] NOT NULL
)
GO
ALTER TABLE [dbo].[Files] ADD CONSTRAINT [PK_Files] PRIMARY KEY CLUSTERED  ([FileID])
GO
GRANT SELECT ON  [dbo].[Files] TO [ssc_webapplication]
GRANT INSERT ON  [dbo].[Files] TO [ssc_webapplication]
GRANT DELETE ON  [dbo].[Files] TO [ssc_webapplication]
GRANT UPDATE ON  [dbo].[Files] TO [ssc_webapplication]
GO
