CREATE TABLE [dbo].[EventLog]
(
[EventID] [int] NOT NULL IDENTITY(1, 1),
[Time] [datetime] NOT NULL CONSTRAINT [DF_ErrorLog_Time] DEFAULT (getdate()),
[Event] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[Description] [nvarchar] (300) COLLATE Latin1_General_CI_AS NULL,
[ErrorCode] [int] NULL,
[Url] [nvarchar] (600) COLLATE Latin1_General_CI_AS NULL,
[RequestIP] [varchar] (18) COLLATE Latin1_General_CI_AS NULL,
[StackTrace] [varchar] (max) COLLATE Latin1_General_CI_AS NULL,
[StackTraceHash] [int] NULL,
[Headers] [nvarchar] (max) COLLATE Latin1_General_CI_AS NULL,
[UserID] [int] NULL
)
GO
ALTER TABLE [dbo].[EventLog] ADD CONSTRAINT [PK_ErrorLog] PRIMARY KEY CLUSTERED  ([EventID])
GO
GRANT SELECT ON  [dbo].[EventLog] TO [ssc_webapplication]
GO
