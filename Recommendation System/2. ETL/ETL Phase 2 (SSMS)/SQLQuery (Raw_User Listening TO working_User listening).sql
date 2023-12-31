USE [Reccomendation System ]
GO
/****** Object:  StoredProcedure [dbo].[RAW_TO_WRK_USER LISTENING HISTORY]    Script Date: 8/29/2023 11:04:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[RAW_TO_WRK_USER LISTENING HISTORY]
	-- =============================================
-- Author:		Pratham Chawla
-- Create date: August 28, 2023
-- Description:	Raw File -> Working File 
-- =============================================
AS
BEGIN
	-- =============================================
	-- DROP TABLE 
	-- =============================================

	IF OBJECT_ID('WRK_USER LISTENING HISTORY') IS NOT NULL
	DROP TABLE [WRK_USER LISTENING HISTORY]

	-- =============================================
	--CREATE TABLE 
	-- =============================================

	CREATE TABLE [WRK_USER LISTENING HISTORY]
	(
	   [track_id]       VARCHAR(1000)
      ,[user_id]        VARCHAR(1000)
      ,[playcount]      INT 

	)

	-- =============================================
	-- TRUNCATE TABLE 
	-- =============================================

	TRUNCATE TABLE [WRK_USER LISTENING HISTORY]

	-- =============================================
	-- INSERT INTO
	-- =============================================
     
	 INSERT INTO [WRK_USER LISTENING HISTORY](
	   [track_id]
      ,[user_id]
      ,[playcount]
	  )
	  SELECT 
	   [track_id]
      ,[user_id]
      ,[playcount]
	  FROM [User Listening History]

	  --(1048575 rows affected)
END
