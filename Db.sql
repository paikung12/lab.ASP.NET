USE [master]
GO
/****** Object:  Database [uppart2]    Script Date: 6/4/2562 3:37:21 ******/
CREATE DATABASE [uppart2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'uppart2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\uppart2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'uppart2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\uppart2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [uppart2] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [uppart2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [uppart2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [uppart2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [uppart2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [uppart2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [uppart2] SET ARITHABORT OFF 
GO
ALTER DATABASE [uppart2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [uppart2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [uppart2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [uppart2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [uppart2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [uppart2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [uppart2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [uppart2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [uppart2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [uppart2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [uppart2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [uppart2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [uppart2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [uppart2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [uppart2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [uppart2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [uppart2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [uppart2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [uppart2] SET  MULTI_USER 
GO
ALTER DATABASE [uppart2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [uppart2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [uppart2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [uppart2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [uppart2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [uppart2] SET QUERY_STORE = OFF
GO
USE [uppart2]
GO
/****** Object:  Table [dbo].[Calendar]    Script Date: 6/4/2562 3:37:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tile] [varchar](max) NOT NULL,
	[Day] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[Path] [varchar](max) NULL,
 CONSTRAINT [PK_Calendar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TreeView]    Script Date: 6/4/2562 3:37:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TreeView](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](30) NOT NULL,
	[Parent] [int] NULL,
	[URL] [nchar](255) NULL,
	[PicturePath] [nchar](225) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Calendar] ON 

INSERT [dbo].[Calendar] ([ID], [Tile], [Day], [Month], [Year], [Path]) VALUES (4, N'asdasd                                                                                                                                                                                                                                                    ', 31, 3, 2014, NULL)
INSERT [dbo].[Calendar] ([ID], [Tile], [Day], [Month], [Year], [Path]) VALUES (6, N'qwe                                                                                                                                                                                                                                                       ', 1, 1, 2014, NULL)
INSERT [dbo].[Calendar] ([ID], [Tile], [Day], [Month], [Year], [Path]) VALUES (8, N'                                                                                                                                                                                                                                                          ', 1, 4, 2014, NULL)
INSERT [dbo].[Calendar] ([ID], [Tile], [Day], [Month], [Year], [Path]) VALUES (10, N'xxxx                                                                                                                                                                                                                                                      ', 6, 4, 2562, NULL)
INSERT [dbo].[Calendar] ([ID], [Tile], [Day], [Month], [Year], [Path]) VALUES (13, N'xxxxx', 5, 4, 2562, N'asdasdasd')
INSERT [dbo].[Calendar] ([ID], [Tile], [Day], [Month], [Year], [Path]) VALUES (14, N'ใบงานเข้าร่วมกิจกรรม ผสานศิลป์ ถ่ินล้านนา.docx', 1, 4, 2557, N'Upload/7efcafff-8639-472a-959c-73c96e581f60.docx')
INSERT [dbo].[Calendar] ([ID], [Tile], [Day], [Month], [Year], [Path]) VALUES (15, N'ใบงานเข้าร่วมกิจกรรม ผสานศิลป์ ถ่ินล้านนา.docx', 1, 4, 2557, N'Upload/8052429f-4fc0-40f6-9a8e-47250e6c594f.docx')
INSERT [dbo].[Calendar] ([ID], [Tile], [Day], [Month], [Year], [Path]) VALUES (16, N'ใบงานเข้าร่วมกิจกรรม ผสานศิลป์ ถ่ินล้านนา.docx', 1, 4, 2562, N'Upload/a3273782-663a-4a76-8773-9ec24d212a11.docx')
SET IDENTITY_INSERT [dbo].[Calendar] OFF
SET IDENTITY_INSERT [dbo].[TreeView] ON 

INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (1, N'Level 1x                      ', NULL, NULL, NULL)
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (2, N'Level 1y                      ', NULL, NULL, NULL)
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (3, N'Level 1z                      ', NULL, NULL, NULL)
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (4, N'Level11x                      ', 1, NULL, NULL)
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (5, N'Level11y                      ', 4, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TreeView] OFF
/****** Object:  StoredProcedure [dbo].[spaTable_1InsertedFile]    Script Date: 6/4/2562 3:37:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[spaTable_1InsertedFile]
	@Name varchar(50),
	@PicturePath varchar(255)
AS
BEGIN

	SET NOCOUNT ON;
	INSERT INTO Table_1
    (Name, PicturePath)
	VALUES(@Name,@PicturePath)
END
GO
/****** Object:  StoredProcedure [dbo].[spCalendar]    Script Date: 6/4/2562 3:37:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCalendar]
	@Day int,
	@Month int,
	@Year int
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT ID,Tile
	FROM Calendar
	WHERE (Day = @Day) AND (Month = @Month) AND (Year = @Year)

    
END
GO
/****** Object:  StoredProcedure [dbo].[spCalendarByID]    Script Date: 6/4/2562 3:37:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCalendarByID]
@ID int
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT Tile, Day, Month, Year, ID
	FROM Calendar
	WHERE (ID = @ID)
    
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert1]    Script Date: 6/4/2562 3:37:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[spInsert1]
	@Tile varchar(Max),
	@Day int,
	@Month int,
	@Year int,
	@Path varchar(Max)
AS
BEGIN
	
	SET NOCOUNT ON;

	INSERT        
	INTO           Calendar(Tile, Day, Month, Year,Path)
	VALUES        (@Tile,@Day,@Month,@Year,@Path)
	 
	 
    
	
END
GO
/****** Object:  StoredProcedure [dbo].[spTable_1InsertedFile]    Script Date: 6/4/2562 3:37:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[spTable_1InsertedFile]
	@Name varchar(50),
	@PicturePath varchar(255)
AS
BEGIN

	SET NOCOUNT ON;
	INSERT INTO Table_1
    (Name, PicturePath)
	VALUES(@Name,@PicturePath)
END
GO
/****** Object:  StoredProcedure [dbo].[spTreeViewInsertedFile]    Script Date: 6/4/2562 3:37:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTreeViewInsertedFile]
    @Name varchar(50),
	@PicturePath varchar(255)
AS
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO TreeView(Name, PicturePath)
	VALUES(@Name, @PicturePath)

   
END
GO
USE [master]
GO
ALTER DATABASE [uppart2] SET  READ_WRITE 
GO
