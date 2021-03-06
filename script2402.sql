USE [master]
GO
/****** Object:  Database [ManageRestaurant]    Script Date: 02/25/2018 21:54:54 ******/
CREATE DATABASE [ManageRestaurant] ON  PRIMARY 
( NAME = N'ManageRestaurant', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ManageRestaurant.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ManageRestaurant_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ManageRestaurant_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ManageRestaurant] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ManageRestaurant].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ManageRestaurant] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ManageRestaurant] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ManageRestaurant] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ManageRestaurant] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ManageRestaurant] SET ARITHABORT OFF
GO
ALTER DATABASE [ManageRestaurant] SET AUTO_CLOSE ON
GO
ALTER DATABASE [ManageRestaurant] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ManageRestaurant] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ManageRestaurant] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ManageRestaurant] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ManageRestaurant] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ManageRestaurant] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ManageRestaurant] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ManageRestaurant] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ManageRestaurant] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ManageRestaurant] SET  ENABLE_BROKER
GO
ALTER DATABASE [ManageRestaurant] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ManageRestaurant] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ManageRestaurant] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ManageRestaurant] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ManageRestaurant] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ManageRestaurant] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ManageRestaurant] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ManageRestaurant] SET  READ_WRITE
GO
ALTER DATABASE [ManageRestaurant] SET RECOVERY SIMPLE
GO
ALTER DATABASE [ManageRestaurant] SET  MULTI_USER
GO
ALTER DATABASE [ManageRestaurant] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ManageRestaurant] SET DB_CHAINING OFF
GO
USE [ManageRestaurant]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 02/25/2018 21:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Supplier](
	[CompanyID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](100) NOT NULL,
	[CompanyAddress] [nvarchar](100) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Services]    Script Date: 02/25/2018 21:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](100) NULL,
	[Price] [money] NULL,
	[ServiceType] [nvarchar](500) NULL,
	[Deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Services] ON
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [Price], [ServiceType], [Deleted]) VALUES (1, N'Band', 30.0000, N'Wedding', 0)
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [Price], [ServiceType], [Deleted]) VALUES (2, N'Stage', 40.0000, N'Wedding', 0)
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [Price], [ServiceType], [Deleted]) VALUES (3, N'Singer', 100.0000, N'Wedding', 0)
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [Price], [ServiceType], [Deleted]) VALUES (4, N'Clothing', 30.0000, N'Wedding', 0)
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [Price], [ServiceType], [Deleted]) VALUES (5, N'Banner', 20.0000, N'Event', 0)
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [Price], [ServiceType], [Deleted]) VALUES (6, N'Balloon', 12.0000, N'Event', 0)
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [Price], [ServiceType], [Deleted]) VALUES (7, N'MC', 25.0000, N'Wedding, Event', 0)
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [Price], [ServiceType], [Deleted]) VALUES (8, N'Cake', 25.0000, N'Event', 0)
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [Price], [ServiceType], [Deleted]) VALUES (9, N'Laptop', 5.0000, N'Conference', 0)
SET IDENTITY_INSERT [dbo].[Services] OFF
/****** Object:  Table [dbo].[Categories]    Script Date: 02/25/2018 21:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CateID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
	[Descriptions] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT [dbo].[Categories] ([CateID], [CategoryName], [Descriptions]) VALUES (1, N'Dessert', NULL)
INSERT [dbo].[Categories] ([CateID], [CategoryName], [Descriptions]) VALUES (2, N'GasDrink', NULL)
INSERT [dbo].[Categories] ([CateID], [CategoryName], [Descriptions]) VALUES (3, N'Main dish', NULL)
INSERT [dbo].[Categories] ([CateID], [CategoryName], [Descriptions]) VALUES (4, N'Drink', NULL)
INSERT [dbo].[Categories] ([CateID], [CategoryName], [Descriptions]) VALUES (5, N'Acohol', NULL)
INSERT [dbo].[Categories] ([CateID], [CategoryName], [Descriptions]) VALUES (6, N'Laset', NULL)
INSERT [dbo].[Categories] ([CateID], [CategoryName], [Descriptions]) VALUES (7, N'Cake', NULL)
INSERT [dbo].[Categories] ([CateID], [CategoryName], [Descriptions]) VALUES (8, N'Smooth', NULL)
INSERT [dbo].[Categories] ([CateID], [CategoryName], [Descriptions]) VALUES (9, N'Cocktail', NULL)
INSERT [dbo].[Categories] ([CateID], [CategoryName], [Descriptions]) VALUES (10, N'Furniture', NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
/****** Object:  Table [dbo].[Places]    Script Date: 02/25/2018 21:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Places](
	[PlaceID] [int] IDENTITY(1,1) NOT NULL,
	[PlaceName] [nvarchar](100) NOT NULL,
	[Picture] [varchar](200) NULL,
	[Description] [nvarchar](100) NULL,
	[Price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[PlaceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Places] ON
INSERT [dbo].[Places] ([PlaceID], [PlaceName], [Picture], [Description], [Price]) VALUES (1, N'Medium-1A', N'https://www.ovalroom.com/wp-content/uploads/2014/08/Oval-Room38069.jpg', N'8 person', NULL)
INSERT [dbo].[Places] ([PlaceID], [PlaceName], [Picture], [Description], [Price]) VALUES (2, N'Medium-1B', N'https://www.ovalroom.com/wp-content/uploads/2014/08/Oval-Room38069.jpg', N'10 person', NULL)
INSERT [dbo].[Places] ([PlaceID], [PlaceName], [Picture], [Description], [Price]) VALUES (3, N'Table1', N'https://www.ovalroom.com/wp-content/uploads/2014/08/Oval-Room38069.jpg', N'4 person', NULL)
INSERT [dbo].[Places] ([PlaceID], [PlaceName], [Picture], [Description], [Price]) VALUES (4, N'Table2', N'https://www.ovalroom.com/wp-content/uploads/2014/08/Oval-Room38069.jpg', N'5 person', NULL)
INSERT [dbo].[Places] ([PlaceID], [PlaceName], [Picture], [Description], [Price]) VALUES (5, N'Table3', N'https://www.ovalroom.com/wp-content/uploads/2014/08/Oval-Room38069.jpg', N'6 person', NULL)
INSERT [dbo].[Places] ([PlaceID], [PlaceName], [Picture], [Description], [Price]) VALUES (6, N'Table4', N'https://www.ovalroom.com/wp-content/uploads/2014/08/Oval-Room38069.jpg', N'4 person', NULL)
INSERT [dbo].[Places] ([PlaceID], [PlaceName], [Picture], [Description], [Price]) VALUES (7, N'VIP-2A', N'https://www.ovalroom.com/wp-content/uploads/2014/08/Oval-Room38069.jpg', N'50 person', NULL)
INSERT [dbo].[Places] ([PlaceID], [PlaceName], [Picture], [Description], [Price]) VALUES (8, N'VIP-2B', N'https://www.ovalroom.com/wp-content/uploads/2014/08/Oval-Room38069.jpg', N'35 person', NULL)
SET IDENTITY_INSERT [dbo].[Places] OFF
/****** Object:  Table [dbo].[Employee]    Script Date: 02/25/2018 21:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [varchar](50) NOT NULL,
	[EmployeeName] [nvarchar](100) NOT NULL,
	[Gender] [bit] NOT NULL,
	[BirthDay] [datetime] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Role] [nvarchar](50) NULL,
	[Picture] [varchar](200) NULL,
	[JobName] [nvarchar](100) NULL,
	[Deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 02/25/2018 21:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](100) NOT NULL,
	[CustomerPhone] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Items]    Script Date: 02/25/2018 21:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ItemID] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [nvarchar](100) NOT NULL,
	[Quantity] [bigint] NULL,
	[Price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Items] ON
INSERT [dbo].[Items] ([ItemID], [ItemName], [Quantity], [Price]) VALUES (1, N'Table', 300, 34.0000)
INSERT [dbo].[Items] ([ItemID], [ItemName], [Quantity], [Price]) VALUES (2, N'Chair', 1000, 22.0000)
INSERT [dbo].[Items] ([ItemID], [ItemName], [Quantity], [Price]) VALUES (3, N'Dra', 1500, 12.0000)
INSERT [dbo].[Items] ([ItemID], [ItemName], [Quantity], [Price]) VALUES (4, N'Bow', 3000, 20.0000)
INSERT [dbo].[Items] ([ItemID], [ItemName], [Quantity], [Price]) VALUES (5, N'Dish', 3000, 20.0000)
INSERT [dbo].[Items] ([ItemID], [ItemName], [Quantity], [Price]) VALUES (6, N'Light', 500, 20.0000)
INSERT [dbo].[Items] ([ItemID], [ItemName], [Quantity], [Price]) VALUES (7, N'Spoon', 5000, 10.0000)
INSERT [dbo].[Items] ([ItemID], [ItemName], [Quantity], [Price]) VALUES (8, N'Knight', 5000, 12.0000)
INSERT [dbo].[Items] ([ItemID], [ItemName], [Quantity], [Price]) VALUES (9, N'Cup', 5000, 3.0000)
SET IDENTITY_INSERT [dbo].[Items] OFF
/****** Object:  Table [dbo].[ImportMaterial]    Script Date: 02/25/2018 21:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImportMaterial](
	[ImportID] [int] IDENTITY(1,1) NOT NULL,
	[MaterialsName] [nvarchar](100) NULL,
	[Quantity] [int] NULL,
	[Price] [money] NULL,
	[EmployeeID] [varchar](50) NULL,
	[SupplierID] [int] NULL,
	[ImportDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ImportID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IESupplies]    Script Date: 02/25/2018 21:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IESupplies](
	[TransID] [int] IDENTITY(1,1) NOT NULL,
	[SupplyID] [int] NULL,
	[EmployeeID] [varchar](50) NULL,
	[Supplier] [int] NULL,
	[TypeName] [nvarchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[Quantity] [int] NULL,
	[Price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[TransID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contracts]    Script Date: 02/25/2018 21:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contracts](
	[ContractID] [int] IDENTITY(1,1) NOT NULL,
	[ContractType] [varchar](50) NULL,
	[CustomerID] [int] NULL,
	[PlaceID] [int] NULL,
	[TotalPrice] [money] NULL,
	[CreateDate] [datetime] NULL,
	[ExpireDate] [datetime] NULL,
	[EffectDate] [date] NULL,
	[EffectTime] [varchar](10) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContractID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order]    Script Date: 02/25/2018 21:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [varchar](50) NULL,
	[PlaceID] [int] NULL,
	[OrderDate] [datetime] NOT NULL,
	[Total] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Meals]    Script Date: 02/25/2018 21:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Meals](
	[MealID] [int] IDENTITY(1,1) NOT NULL,
	[MealName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[Price] [money] NOT NULL,
	[Picture] [varchar](200) NULL,
	[CateID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MealID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Meals] ON
INSERT [dbo].[Meals] ([MealID], [MealName], [Description], [Price], [Picture], [CateID]) VALUES (1, N'Cooktail mango', N'Vietnam', 12.0000, N'https://imagesvc.timeincapp.com/v3/mm/image?url=http%3A%2F%2Fcdn-image.foodandwine.com%2Fsites%2Fdefault%2Ffiles%2FHD-200912-r-raspberry-macarons.jpg&w=700&q=85', 9)
INSERT [dbo].[Meals] ([MealID], [MealName], [Description], [Price], [Picture], [CateID]) VALUES (2, N'Spagetti', N'Italia', 24.0000, N'https://imagesvc.timeincapp.com/v3/mm/image?url=http%3A%2F%2Fcdn-image.foodandwine.com%2Fsites%2Fdefault%2Ffiles%2FHD-200912-r-raspberry-macarons.jpg&w=700&q=85', 2)
INSERT [dbo].[Meals] ([MealID], [MealName], [Description], [Price], [Picture], [CateID]) VALUES (3, N'Vodka', N'England', 22.0000, N'https://imagesvc.timeincapp.com/v3/mm/image?url=http%3A%2F%2Fcdn-image.foodandwine.com%2Fsites%2Fdefault%2Ffiles%2FHD-200912-r-raspberry-macarons.jpg&w=700&q=85', 5)
INSERT [dbo].[Meals] ([MealID], [MealName], [Description], [Price], [Picture], [CateID]) VALUES (4, N'Red bean dessert', N'Vietnam', 10.0000, N'https://imagesvc.timeincapp.com/v3/mm/image?url=http%3A%2F%2Fcdn-image.foodandwine.com%2Fsites%2Fdefault%2Ffiles%2FHD-200912-r-raspberry-macarons.jpg&w=700&q=85', 1)
INSERT [dbo].[Meals] ([MealID], [MealName], [Description], [Price], [Picture], [CateID]) VALUES (5, N'Aquatina', N'Vietnam', 3.0000, N'https://imagesvc.timeincapp.com/v3/mm/image?url=http%3A%2F%2Fcdn-image.foodandwine.com%2Fsites%2Fdefault%2Ffiles%2FHD-200912-r-raspberry-macarons.jpg&w=700&q=85', 4)
INSERT [dbo].[Meals] ([MealID], [MealName], [Description], [Price], [Picture], [CateID]) VALUES (6, N'Cocacola', N'Vietnam', 4.0000, N'https://imagesvc.timeincapp.com/v3/mm/image?url=http%3A%2F%2Fcdn-image.foodandwine.com%2Fsites%2Fdefault%2Ffiles%2FHD-200912-r-raspberry-macarons.jpg&w=700&q=85', 2)
INSERT [dbo].[Meals] ([MealID], [MealName], [Description], [Price], [Picture], [CateID]) VALUES (7, N'Cupcake Chocola', N'America', 7.0000, N'https://imagesvc.timeincapp.com/v3/mm/image?url=http%3A%2F%2Fcdn-image.foodandwine.com%2Fsites%2Fdefault%2Ffiles%2FHD-200912-r-raspberry-macarons.jpg&w=700&q=85', 10)
INSERT [dbo].[Meals] ([MealID], [MealName], [Description], [Price], [Picture], [CateID]) VALUES (8, N'Strawbery smoothy', N'Paris', 10.0000, N'https://imagesvc.timeincapp.com/v3/mm/image?url=http%3A%2F%2Fcdn-image.foodandwine.com%2Fsites%2Fdefault%2Ffiles%2FHD-200912-r-raspberry-macarons.jpg&w=700&q=85', 8)
SET IDENTITY_INSERT [dbo].[Meals] OFF
/****** Object:  Table [dbo].[Accounts]    Script Date: 02/25/2018 21:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Blocked] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServiceAddition]    Script Date: 02/25/2018 21:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceAddition](
	[ServiceAddID] [int] IDENTITY(1,1) NOT NULL,
	[ContractID] [int] NULL,
	[Description] [nvarchar](100) NULL,
	[Quantity] [int] NULL,
	[Price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceAddID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 02/25/2018 21:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderdetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[MealID] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderdetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractMealDetail]    Script Date: 02/25/2018 21:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractMealDetail](
	[ContractMealDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ContractID] [int] NULL,
	[Meal] [int] NULL,
	[Description] [nvarchar](100) NULL,
	[Quantity] [int] NULL,
	[Price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContractMealDetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractItemDetail]    Script Date: 02/25/2018 21:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractItemDetail](
	[ContractDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ContractID] [int] NULL,
	[ItemID] [int] NULL,
	[Description] [nvarchar](100) NULL,
	[Quantity] [int] NULL,
	[Price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContractDetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractServiceDetail]    Script Date: 02/25/2018 21:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractServiceDetail](
	[ContractServiceDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ContractID] [int] NULL,
	[ServiceID] [int] NULL,
	[Description] [nvarchar](100) NULL,
	[Price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContractServiceDetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Check [CK__Employee__Role__6EF57B66]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD CHECK  (([Role]='None' OR [Role]='Accountant' OR [Role]='Waiter' OR [Role]='Warehouse staff' OR [Role]='Manager' OR [Role]='Order staff' OR [Role]='Admin'))
GO
/****** Object:  Check [CK__Contracts__Contr__395884C4]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD CHECK  (([ContractType]='Event' OR [ContractType]='Conference' OR [ContractType]='Wedding'))
GO
/****** Object:  ForeignKey [FK__ImportMat__Emplo__339FAB6E]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[ImportMaterial]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
/****** Object:  ForeignKey [FK__ImportMat__Suppl__3493CFA7]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[ImportMaterial]  WITH CHECK ADD FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([CompanyID])
GO
/****** Object:  ForeignKey [FK__IESupplie__Emplo__2DE6D218]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[IESupplies]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
/****** Object:  ForeignKey [FK__IESupplie__Suppl__2CF2ADDF]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[IESupplies]  WITH CHECK ADD FOREIGN KEY([SupplyID])
REFERENCES [dbo].[Items] ([ItemID])
GO
/****** Object:  ForeignKey [FK__IESupplie__Suppl__2EDAF651]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[IESupplies]  WITH CHECK ADD FOREIGN KEY([Supplier])
REFERENCES [dbo].[Supplier] ([CompanyID])
GO
/****** Object:  ForeignKey [FK__Contracts__Custo__3A4CA8FD]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
/****** Object:  ForeignKey [FK__Contracts__Place__3B40CD36]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD FOREIGN KEY([PlaceID])
REFERENCES [dbo].[Places] ([PlaceID])
GO
/****** Object:  ForeignKey [FK__Order__EmployeeI__2180FB33]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
/****** Object:  ForeignKey [FK__Order__PlaceID__22751F6C]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([PlaceID])
REFERENCES [dbo].[Places] ([PlaceID])
GO
/****** Object:  ForeignKey [FK__Meals__CateID__151B244E]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[Meals]  WITH CHECK ADD FOREIGN KEY([CateID])
REFERENCES [dbo].[Categories] ([CateID])
GO
/****** Object:  ForeignKey [FK__Accounts__Userna__73BA3083]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
/****** Object:  ForeignKey [FK__ServiceAd__Contr__55009F39]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[ServiceAddition]  WITH CHECK ADD FOREIGN KEY([ContractID])
REFERENCES [dbo].[Contracts] ([ContractID])
GO
/****** Object:  ForeignKey [FK__OrderDeta__MealI__282DF8C2]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([MealID])
REFERENCES [dbo].[Meals] ([MealID])
GO
/****** Object:  ForeignKey [FK__OrderDeta__Order__2739D489]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
/****** Object:  ForeignKey [FK__ContractM__Contr__45BE5BA9]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[ContractMealDetail]  WITH CHECK ADD FOREIGN KEY([ContractID])
REFERENCES [dbo].[Contracts] ([ContractID])
GO
/****** Object:  ForeignKey [FK__ContractMe__Meal__46B27FE2]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[ContractMealDetail]  WITH CHECK ADD FOREIGN KEY([Meal])
REFERENCES [dbo].[Meals] ([MealID])
GO
/****** Object:  ForeignKey [FK__ContractI__Contr__40058253]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[ContractItemDetail]  WITH CHECK ADD FOREIGN KEY([ContractID])
REFERENCES [dbo].[Contracts] ([ContractID])
GO
/****** Object:  ForeignKey [FK__ContractI__ItemI__40F9A68C]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[ContractItemDetail]  WITH CHECK ADD FOREIGN KEY([ItemID])
REFERENCES [dbo].[Items] ([ItemID])
GO
/****** Object:  ForeignKey [FK__ContractS__Contr__671F4F74]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[ContractServiceDetail]  WITH CHECK ADD FOREIGN KEY([ContractID])
REFERENCES [dbo].[Contracts] ([ContractID])
GO
/****** Object:  ForeignKey [FK__ContractS__Servi__681373AD]    Script Date: 02/25/2018 21:54:58 ******/
ALTER TABLE [dbo].[ContractServiceDetail]  WITH CHECK ADD FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Services] ([ServiceID])
GO
