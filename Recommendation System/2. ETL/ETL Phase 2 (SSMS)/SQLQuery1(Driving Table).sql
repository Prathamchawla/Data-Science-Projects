USE [Reccomendation System]
GO
/****** Object:  StoredProcedure [dbo].[DRIVING_TABLE]    Script Date: 9/13/2023 4:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[DRIVING_TABLE]
-- =============================================
-- Author:		Pratham Chawla 
-- Create date: September 03,2023
-- Description:	Driving table 
-- =============================================
AS
BEGIN
-- =============================================
--DROP TABLE
-- ============================================= 
IF OBJECT_ID('DRIV') IS NOT NULL
	DROP TABLE [DRIV]

-- =============================================
-- CREATE TABLE 
-- =============================================
create table DRIV (
   [track_id] varchar(1000),
   [name] varchar(1000),
   [artist] varchar(1000),
   [tags] varchar(1000),
   [genre] varchar(100),
   [user_id] varchar(1000),
   [playcount] INT
)

-- =============================================
-- INSERT INTO
-- =============================================
INSERT INTO [DRIV]
select A.[track_id],A.[name],A.[artist],A.[tags],A.[genre],B.[user_id],B.[playcount] from 
[WRK_MUSIC INFO] AS A LEFT JOIN [WRK_USER LISTENING HISTORY] AS B ON A.[track_id] = B.[track_id]

-- Select * from [DRIV]
--SELECT * FROM [WRK_MUSIC INFO] 
--SELECT * FROM [WRK_USER LISTENING HISTORY]

END
