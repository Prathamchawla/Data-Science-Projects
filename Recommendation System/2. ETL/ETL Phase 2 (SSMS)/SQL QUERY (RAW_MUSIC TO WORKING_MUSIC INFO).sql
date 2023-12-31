USE [Reccomendation System ]
GO
/****** Object:  StoredProcedure [dbo].[RAW_TO_WRK_MUSIC INFO]    Script Date: 8/29/2023 11:03:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[RAW_TO_WRK_MUSIC INFO]
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

	IF OBJECT_ID('WRK_MUSIC INFO') IS NOT NULL
	DROP TABLE [WRK_MUSIC INFO]

	-- =============================================
	--CREATE TABLE 
	-- =============================================

    CREATE TABLE [WRK_MUSIC INFO](
		   [track_id]                 VARCHAR(1000)
		  ,[name]                     VARCHAR(1000)
		  ,[artist]                   VARCHAR(100)
		  ,[tags]                     VARCHAR(1000)
		  ,[genre]                    VARCHAR(100)
		  ,[year]                     DATE
		  ,[duration_ms]              INT
		  ,[danceability]             FLOAT
		  ,[energy]                   FLOAT
		  ,[key]                      INT
		  ,[loudness]                 VARCHAR(100)
		  ,[mode]                     VARCHAR(10)
		  ,[speechiness]              VARCHAR(100)
		  ,[acousticness]             VARCHAR(100)
		  ,[instrumentalness]         VARCHAR(100)
		  ,[liveness]                 VARCHAR(100)
		  ,[valence]                  VARCHAR(100)
		  ,[tempo]                    VARCHAR(100)
		  ,[time_signature]           VARCHAR(100)
	)

	-- =============================================
	-- TRUNCATE TABLE 
	-- =============================================

	TRUNCATE TABLE [WRK_MUSIC INFO]

	-- =============================================
	-- INSERT INTO
	-- =============================================

	INSERT INTO [WRK_MUSIC INFO](
	       [track_id]                 
		  ,[name]                     
		  ,[artist]                   
		  ,[tags]                     
		  ,[genre]                    
		  ,[year]                     
		  ,[duration_ms]              
		  ,[danceability]             
		  ,[energy]                   
		  ,[key]                      
		  ,[loudness]                 
		  ,[mode]                     
		  ,[speechiness]             
		  ,[acousticness]            
		  ,[instrumentalness]         
		  ,[liveness]                 
		  ,[valence]                 
		  ,[tempo]                    
		  ,[time_signature]   
)
SELECT 
       [track_id]
      ,[name]
      ,[artist]
      ,[tags]
      ,[genre]
      ,[year]
      ,[duration_ms]
      ,[danceability]
      ,[energy]
      ,[key]
      ,[loudness]
      ,[mode]
      ,[speechiness]
      ,[acousticness]
      ,[instrumentalness]
      ,[liveness]
      ,[valence]
      ,[tempo]
      ,[time_signature]

	  FROM [Music Info]
   -- (101366 rows affected)

END
