SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ListStopWords]
AS
    BEGIN
        SELECT  Word
        FROM    dbo.SearchAnalyzerConfig
        WHERE   [Group] = 0
    END
GO
GRANT EXECUTE ON  [dbo].[ListStopWords] TO [ssc_searchindexer]
GRANT EXECUTE ON  [dbo].[ListStopWords] TO [ssc_webapplication]
GO
