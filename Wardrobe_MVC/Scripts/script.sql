USE [master]
GO
/****** Object:  Database [Wardrobe_MVC]    Script Date: 11/5/2017 4:55:02 PM ******/
CREATE DATABASE [Wardrobe_MVC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe_MVC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_MVC.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe_MVC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_MVC_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe_MVC] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe_MVC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe_MVC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe_MVC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe_MVC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe_MVC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe_MVC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe_MVC] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe_MVC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe_MVC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe_MVC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe_MVC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe_MVC] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe_MVC]
GO
/****** Object:  Table [dbo].[Accessory]    Script Date: 11/5/2017 4:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accessory](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [varchar](50) NOT NULL,
	[AccessoryPhoto] [nvarchar](150) NULL,
	[AccessoryType] [varchar](50) NOT NULL,
	[AccessoryColor] [varchar](50) NOT NULL,
	[AccessorySeason] [varchar](50) NOT NULL,
	[AccessoryOccasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Accessory] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bottom]    Script Date: 11/5/2017 4:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bottom](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [varchar](50) NOT NULL,
	[BottomPhoto] [nvarchar](150) NULL,
	[BottomType] [nvarchar](50) NOT NULL,
	[BottomColor] [nvarchar](50) NOT NULL,
	[BottomSeason] [nvarchar](50) NOT NULL,
	[BottomOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bottom] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shoe]    Script Date: 11/5/2017 4:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shoe](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeName] [varchar](50) NOT NULL,
	[ShoePhoto] [nvarchar](150) NULL,
	[ShoeType] [varchar](50) NOT NULL,
	[ShoeColor] [varchar](50) NOT NULL,
	[ShoeSeason] [varchar](50) NOT NULL,
	[ShoeOccasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Shoe] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Top]    Script Date: 11/5/2017 4:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Top](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [varchar](50) NOT NULL,
	[TopPhoto] [nvarchar](150) NULL,
	[TopType] [varchar](50) NOT NULL,
	[TopColor] [varchar](50) NOT NULL,
	[TopSeason] [varchar](50) NOT NULL,
	[TopOccasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Top] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accessory] ON 

INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (1, N'Dress Belt', N'Content/blackBelt.jpg', N'Belt', N'Black (Should match shoe color)', N'Year Round', N'Wearing pants with belt loops')
INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (2, N'Watch', N'Content/DressWatch.jpg', N'Dress watch', N'Black band & face', N'Year Round', N'With business attire')
INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (3, N'Laptop Bag', N'Content/LeatherBriefcase.jpg', N'Leather', N'Brown', N'Year Round', N'To and from work')
SET IDENTITY_INSERT [dbo].[Accessory] OFF
SET IDENTITY_INSERT [dbo].[Bottom] ON 

INSERT [dbo].[Bottom] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (1, N'Black Pants', N'Content/BlackPants.jpg', N'Flat Front Dress Pants', N'Black', N'Year Round', N'Business Professional/Casual')
INSERT [dbo].[Bottom] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (2, N'Gray Pants', N'Content/grayPants.jpg', N'Flat Front Dress Pants', N'Gray', N'Year Round', N'Business Professional/Casual')
INSERT [dbo].[Bottom] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (3, N'Professional Denim', N'Content/DarkJeans.jpg', N'Denim without custom stitching', N'Dark Blue', N'Year Round', N'Business Casual')
SET IDENTITY_INSERT [dbo].[Bottom] OFF
SET IDENTITY_INSERT [dbo].[Shoe] ON 

INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (1, N'Neumok', N'Content/neumok_blue.jpg', N'Wingtip Oxford', N'Navy', N'Any, non-winter', N'Business Casual or Professional')
INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (2, N'Neumok 2.0', N'Content/neumok_red.jpg', N'Wingtip Oxford', N'Red', N'Any, non-winter', N'Business Casual or Professional')
INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (3, N'Normandy', N'Content/normandy_boot.jpg', N'Boot', N'Brown', N'Any', N'Casual to Business Casual')
SET IDENTITY_INSERT [dbo].[Shoe] OFF
SET IDENTITY_INSERT [dbo].[Top] ON 

INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccasion]) VALUES (1, N'Blue Casual', N'Content/DoubleFrontPocketBlue.jpg', N'Long Sleeve, Button Down', N'Blue', N'Year Round', N'Casual')
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccasion]) VALUES (2, N'Professional Shirt', N'Content/GrayButtonDown.jpg', N'Long Sleeve, Button Down', N'Gray', N'All', N'Business')
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccasion]) VALUES (3, N'Relaxed Casual', N'Content/RedBluePlad.jpg', N'Long Sleeve, Button Down', N'Red/Blue', N'Fall', N'Casual')
SET IDENTITY_INSERT [dbo].[Top] OFF
USE [master]
GO
ALTER DATABASE [Wardrobe_MVC] SET  READ_WRITE 
GO
