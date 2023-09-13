USE [Reccomendation System ]
GO
/****** Object:  StoredProcedure [dbo].[__TMP__RAW_TO_WRK_TableNmae]    Script Date: 8/29/2023 11:05:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[__TMP__RAW_TO_WRK_TableNmae]
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
AS
BEGIN
    -- =============================================
	-- DROP TABLE 
	-- =============================================

	IF OBJECT_ID('WRK_TableNmae') IS NOT NULL
	DROP TABLE [WRK_TableNmae]

	-- =============================================
	--CREATE TABLE 
	-- =============================================

    CREATE TABLE [WRK_TableNmae](
		   [VVV]                 VARCHAR(1000)
		  ,[DDD]                 DATE
		  ,[III]                 INT
		  ,[FFF]                 FLOAT
		  
	)
	-- =============================================
	-- TRUNCATE TABLE 
	-- =============================================

	TRUNCATE TABLE [WRK_TableNmae]

	-- =============================================
	-- INSERT INTO
	-- =============================================

	INSERT INTO   [WRK_TableNmae](
	 [VVV]
	,[DDD]
	,[III]
	,[FFF]
)
SELECT 
     [VVV]
	,[DDD]
	,[III]
	,[FFF]
	FROM [TableName]

END
