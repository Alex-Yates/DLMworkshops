CREATE TABLE [tSQLt].[TestResult]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Class] [nvarchar] (max) COLLATE Latin1_General_CI_AS NOT NULL,
[TestCase] [nvarchar] (max) COLLATE Latin1_General_CI_AS NOT NULL,
[Name] AS ((quotename([Class])+'.')+quotename([TestCase])),
[TranName] [nvarchar] (max) COLLATE Latin1_General_CI_AS NOT NULL,
[Result] [nvarchar] (max) COLLATE Latin1_General_CI_AS NULL,
[Msg] [nvarchar] (max) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
ALTER TABLE [tSQLt].[TestResult] ADD 
CONSTRAINT [PK__TestResu__3214EC0763BD240D] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]

GO