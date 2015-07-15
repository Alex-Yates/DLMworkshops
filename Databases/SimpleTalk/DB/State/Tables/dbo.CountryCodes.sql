CREATE TABLE [dbo].[CountryCodes]
(
[CountryName] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL,
[CountryCode] [nvarchar] (4) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'A list of country codes 
ISO 3166-1-alpha-2 code
http://www.iso.org/iso/country_codes/iso_3166_code_lists/country_names_and_code_elements.htm', 'SCHEMA', N'dbo', 'TABLE', N'CountryCodes', NULL, NULL
GO

EXEC sp_addextendedproperty N'MS_Description', N'In theory shouldn''t need more than two characters', 'SCHEMA', N'dbo', 'TABLE', N'CountryCodes', 'COLUMN', N'CountryCode'
GO

ALTER TABLE [dbo].[CountryCodes] ADD CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED  ([CountryCode]) ON [PRIMARY]
GO
