USE [uppart2]
GO
/****** Object:  StoredProcedure [dbo].[spInsert1]    Script Date: 6/4/2562 1:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE  [dbo].[spInsert1]
	@Tile varchar(Max),
	@Day int,
	@Month int,
	@Year int,
	@Path varchar(Max)
AS
BEGIN
	
	SET NOCOUNT ON;

	INSERT        TOP (200)
	INTO           Calendar(Tile, Day, Month, Year,Path)
	VALUES        (@Tile,@Day,@Month,@Year,@Path)
	 
	 
    
	
END
