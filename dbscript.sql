USE [master]
GO
/****** Object:  Database [NWDbFinalSpring2025]    Script Date: 5/26/2025 3:30:08 PM ******/
CREATE DATABASE [NWDbFinalSpring2025]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NWDbFinalSpring2025', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\NWDbFinalSpring2025.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NWDbFinalSpring2025_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\NWDbFinalSpring2025_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [NWDbFinalSpring2025] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NWDbFinalSpring2025].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NWDbFinalSpring2025] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET ARITHABORT OFF 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET  ENABLE_BROKER 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET RECOVERY FULL 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET  MULTI_USER 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NWDbFinalSpring2025] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NWDbFinalSpring2025] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'NWDbFinalSpring2025', N'ON'
GO
ALTER DATABASE [NWDbFinalSpring2025] SET QUERY_STORE = ON
GO
ALTER DATABASE [NWDbFinalSpring2025] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [NWDbFinalSpring2025]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/26/2025 3:30:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(100,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmpID] [char](36) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[JobTitle] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[CreditCard] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC,
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryTransactions]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryTransactions](
	[TransactionID] [int] IDENTITY(700,1) NOT NULL,
	[TransactionType] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[PurchaseOrderID] [int] NULL,
	[CustomerOrderID] [int] NULL,
	[Comments] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_InventoryTransactions] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(100,1) NOT NULL,
	[ProductCode] [nvarchar](50) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[CategoryID] [int] NULL,
	[StandardCost] [money] NULL,
	[ListPrice] [money] NOT NULL,
	[ReorderLevel] [int] NULL,
	[TargetLevel] [int] NULL,
	[Discontinued] [bit] NOT NULL,
	[SupplierID] [int] NULL,
	[AvailableQty] [int] NULL,
	[Reordered] [bit] NULL,
	[prodimage] [nvarchar](30) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrderDetails]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrderDetails](
	[OrderDetailID] [int] IDENTITY(600,1) NOT NULL,
	[PurchaseOrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](100) NULL,
	[Quantity] [int] NOT NULL,
	[UnitCost] [money] NOT NULL,
	[PostedToInventory] [bit] NULL,
	[InventoryID] [int] NULL,
 CONSTRAINT [PK_PurchaseOrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrders]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrders](
	[PurchaseOrderID] [int] IDENTITY(500,1) NOT NULL,
	[CreationDate] [datetime2](7) NULL,
	[StatusID] [int] NULL,
	[ExpectedDate] [datetime2](7) NULL,
	[ApprovedBy] [int] NULL,
	[ApprovedDate] [datetime2](7) NULL,
	[EmpID] [char](36) NOT NULL,
 CONSTRAINT [PK_PurchaseOrders] PRIMARY KEY CLUSTERED 
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCart](
	[CartID] [char](36) NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[StandardCost] [money] NOT NULL,
	[QuantityToOrder] [int] NOT NULL,
	[Subtotal]  AS ([QuantityToOrder]*[StandardCost]),
 CONSTRAINT [PK_ShoppingCart] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(300,1) NOT NULL,
	[Company] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[BusinessPhone] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[SupplierImage] [nvarchar](50) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'8.0.11')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'761f6095-088a-4f98-a488-594e6cc307cb', N'Administrator', N'ADMINISTRATOR', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'fc53ddf1-ccd3-43fe-b4db-c000bd082bc6', N'Employee', N'EMPLOYEE', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'25153b3d-8f68-4065-8468-3ef57f6483af', N'761f6095-088a-4f98-a488-594e6cc307cb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'028752dd-a952-4772-9328-574c27e0c9a3', N'fc53ddf1-ccd3-43fe-b4db-c000bd082bc6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'23e82280-3f44-4c43-8b85-02fd375b267e', N'fc53ddf1-ccd3-43fe-b4db-c000bd082bc6')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'028752dd-a952-4772-9328-574c27e0c9a3', N'someuser@test.com', N'SOMEUSER@TEST.COM', N'someuser@test.com', N'SOMEUSER@TEST.COM', 0, N'AQAAAAIAAYagAAAAEILMPk4M8hdNG3vJ44AqUnDyJ2kDtFBf8frLS7tb4/KyDj1rOxSqSgPdUBaIrnHEWA==', N'ZDGUOZEZWAEJWNHODCNKZBOLXIEJIMHS', N'354ca734-049f-4a04-97f0-3fa09767392f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'23e82280-3f44-4c43-8b85-02fd375b267e', N'empuser1@test.com', N'EMPUSER1@TEST.COM', N'empuser1@test.com', N'EMPUSER1@TEST.COM', 0, N'AQAAAAIAAYagAAAAEOe6i8ugkPOkmOGxPZzXNYectEdSfByhPU4wEmUVme0TgM0Jjml2zz5/1W7uHApgvA==', N'BAVU3UBLSSQNUUC223EH3E6B3PBVFCVT', N'd5e669eb-a219-486e-8925-c0031dc4a4b0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'25153b3d-8f68-4065-8468-3ef57f6483af', N'adminuser1@test.com', N'ADMINUSER1@TEST.COM', N'adminuser1@test.com', N'ADMINUSER1@TEST.COM', 0, N'AQAAAAIAAYagAAAAEKgiqyhVvvPw+Jtwocx9qeKzkbvU5eII7owUe2TABA18LI1PtIvbJFu/MqO3cSIwXg==', N'GPA7RQ6I534TN2O5DZCJI2YWNCIIY464', N'fefdfd54-c56e-4491-9cd3-0f42500f6a82', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (100, N'Beverages')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (101, N'Canned Fruit & Vegetables')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (102, N'Dried Fruit')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (103, N'Condiments')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (104, N'Soups')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[Employees] ([EmpID], [Username], [JobTitle], [Address], [City], [State], [Country], [CreditCard]) VALUES (N'1532895E-5901-4F90-BB9B-97DA7CF93081', N'user1', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employees] ([EmpID], [Username], [JobTitle], [Address], [City], [State], [Country], [CreditCard]) VALUES (N'3604207C-66DB-4CDC-BE8A-543DC38B5236', N'user2', NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (103, N'NWTB-87', N'Northwind Traders Tea', N'none', 100, 2.0000, 4.0000, 20, 50, 0, 300, 5, 1, N'beverages.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (104, N'NWTB-81', N'Northwind Traders Green Tea', N'none', 100, 2.0000, 2.9900, 100, 125, 0, 300, 5, 0, N'beverages.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (105, N'NWTB-43', N'Northwind Traders Coffee', N'none', 100, 25.0000, 35.0000, 15, 100, 0, 305, 5, 1, N'beverages.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (106, N'NWTB-34', N'Northwind Traders Beer', N'none', 100, 11.0000, 16.0000, 10, 50, 0, 305, 5, 0, N'beverages.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (107, N'NWTB-1', N'Northwind Traders Chai', N'none', 100, 12.0000, 14.0000, 10, 40, 0, 304, 5, 0, N'beverages.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (108, N'NWTCF-94', N'Northwind Traders Peas', N'none', 101, 1.0000, 1.5000, 10, 40, 0, 304, 5, 1, N'canned.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (110, N'NWTCF-92', N'Northwind Traders Green Beans', N'none', 101, 1.0000, 1.2000, 10, 40, 0, 304, 5, 1, N'canned.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (111, N'NWTCF-89', N'Northwind Traders  Peaches', N'none', 101, 1.0000, 1.5000, 10, 40, 0, 302, 5, 0, N'canned.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (112, N'NWTCF-90', N'Northwind Traders Pineapple', N'none', 101, 1.0000, 1.8000, 101, 40, 0, 302, 5, 0, N'canned.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (113, N'NWTCF-88', N'Northwind Traders Pears', N'none', 101, 1.0000, 1.3000, 10, 40, 0, 303, 5, 0, N'canned.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (114, N'NWTDF-80', N'Northwind Traders Dried Plums', N'none', 102, 3.0000, 3.5000, 50, 75, 0, 304, 5, 0, N'fruits.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (115, N'NWTDF-74', N'Northwind Traders Almonds', N'none', 102, 7.5000, 10.0000, 10, 50, 0, 301, 5, 0, N'fruits.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (116, N'NWTDF-51', N'Northwind Traders Dried Apples', N'none', 102, 15.0000, 19.0000, 10, 40, 0, 301, 5, 0, N'fruits.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (117, N'NWTDF-14', N'Northwind Traders Walnuts', N'none', 102, 22.0000, 30.0000, 30, 100, 0, 303, 5, 0, N'fruits.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (118, N'NWTDF-7', N'Northwind Traders Dreid Pears', N'none', 102, 25.0000, 30.0000, 30, 100, 0, 304, 5, 0, N'fruits.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (119, N'NWTCO-77', N'Northwind Traders Mustard', N'none', 103, 16.5000, 20.0000, 15, 60, 0, 301, 5, 0, N'condiments.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (120, N'NWTCO-4', N'Northwind Traders Cajun Seasoning', N'none', 103, 20.0000, 30.0000, 15, 60, 0, 301, 5, 1, N'condiments.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (121, N'NWTCO-3', N'Northwind Traders Syrup', N'none', 103, 15.0000, 20.0000, 15, 100, 0, 304, 5, 0, N'condiments.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (122, N'NWTSO-99', N'Northwind Traders Chicken Soup', N'none', 104, 1.9500, 3.0000, 100, 300, 0, 305, 5, 0, N'soup.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (123, N'NWTSO-98', N'Northwind Traders Vegetable Soup', N'none', 104, 5.5000, 8.0000, 10, 100, 0, 302, 5, 1, N'soup.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (124, N'NWTSO-41', N'Northwind Traders Clam Chowder', N'none', 104, 10.0000, 15.0000, 40, 100, 0, 303, 5, 1, N'soup.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductCode], [ProductName], [Description], [CategoryID], [StandardCost], [ListPrice], [ReorderLevel], [TargetLevel], [Discontinued], [SupplierID], [AvailableQty], [Reordered], [prodimage]) VALUES (134, N'1', N'1', N'1', 101, 1.0000, 1.0000, 35, 4, 0, 300, 1, 0, N'canned.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[PurchaseOrderDetails] ON 

INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (606, 504, 119, N'Northwind Traders Mustard', 100, 16.5000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (607, 504, 120, N'Northwind Traders Cajun Seasoning', 55, 20.0000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (608, 505, 103, N'Northwind Traders Tea', 45, 2.0000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (609, 506, 108, N'Northwind Traders Peas', 35, 1.0000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (610, 507, 114, N'Northwind Traders Dried Plums', 70, 3.0000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (611, 508, 106, N'Northwind Traders Beer', 45, 11.0000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (612, 508, 107, N'Northwind Traders Chai', 35, 12.0000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (613, 509, 103, N'Northwind Traders Tea', 45, 2.0000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (614, 509, 105, N'Northwind Traders Coffee', 95, 25.0000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (615, 509, 120, N'Northwind Traders Cajun Seasoning', 55, 20.0000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (616, 509, 124, N'Northwind Traders Clam Chowder', 95, 10.0000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (617, 510, 123, N'Northwind Traders Vegetable Soup', 95, 5.5000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (618, 511, 103, N'Northwind Traders Tea', 45, 2.0000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (619, 512, 110, N'Northwind Traders Green Beans', 35, 1.0000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (620, 513, 108, N'Northwind Traders Peas', 35, 1.0000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (621, 514, 103, N'Northwind Traders Tea', 45, 2.0000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (622, 514, 108, N'Northwind Traders Peas', 35, 1.0000, 0, NULL)
INSERT [dbo].[PurchaseOrderDetails] ([OrderDetailID], [PurchaseOrderID], [ProductID], [ProductName], [Quantity], [UnitCost], [PostedToInventory], [InventoryID]) VALUES (623, 514, 120, N'Northwind Traders Cajun Seasoning', 55, 20.0000, 0, NULL)
SET IDENTITY_INSERT [dbo].[PurchaseOrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[PurchaseOrders] ON 

INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [CreationDate], [StatusID], [ExpectedDate], [ApprovedBy], [ApprovedDate], [EmpID]) VALUES (504, CAST(N'2025-04-29T20:58:50.1000000' AS DateTime2), 0, CAST(N'2025-05-04T20:58:50.1000000' AS DateTime2), NULL, NULL, N'23e82280-3f44-4c43-8b85-02fd375b267e')
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [CreationDate], [StatusID], [ExpectedDate], [ApprovedBy], [ApprovedDate], [EmpID]) VALUES (505, CAST(N'2025-05-05T09:48:52.5500000' AS DateTime2), 0, CAST(N'2025-05-10T09:48:52.5500000' AS DateTime2), NULL, NULL, N'23e82280-3f44-4c43-8b85-02fd375b267e')
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [CreationDate], [StatusID], [ExpectedDate], [ApprovedBy], [ApprovedDate], [EmpID]) VALUES (506, CAST(N'2025-05-05T09:55:08.9900000' AS DateTime2), 0, CAST(N'2025-05-10T09:55:08.9900000' AS DateTime2), NULL, NULL, N'23e82280-3f44-4c43-8b85-02fd375b267e')
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [CreationDate], [StatusID], [ExpectedDate], [ApprovedBy], [ApprovedDate], [EmpID]) VALUES (507, CAST(N'2025-05-05T16:18:48.4000000' AS DateTime2), 0, CAST(N'2025-05-10T16:18:48.4000000' AS DateTime2), NULL, NULL, N'23e82280-3f44-4c43-8b85-02fd375b267e')
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [CreationDate], [StatusID], [ExpectedDate], [ApprovedBy], [ApprovedDate], [EmpID]) VALUES (508, CAST(N'2025-05-05T16:36:27.9766667' AS DateTime2), 0, CAST(N'2025-05-10T16:36:27.9766667' AS DateTime2), NULL, NULL, N'25153b3d-8f68-4065-8468-3ef57f6483af')
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [CreationDate], [StatusID], [ExpectedDate], [ApprovedBy], [ApprovedDate], [EmpID]) VALUES (509, CAST(N'2025-05-06T13:19:00.8133333' AS DateTime2), 0, CAST(N'2025-05-11T13:19:00.8133333' AS DateTime2), NULL, NULL, N'23e82280-3f44-4c43-8b85-02fd375b267e')
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [CreationDate], [StatusID], [ExpectedDate], [ApprovedBy], [ApprovedDate], [EmpID]) VALUES (510, CAST(N'2025-05-06T13:43:01.5266667' AS DateTime2), 0, CAST(N'2025-05-11T13:43:01.5266667' AS DateTime2), NULL, NULL, N'23e82280-3f44-4c43-8b85-02fd375b267e')
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [CreationDate], [StatusID], [ExpectedDate], [ApprovedBy], [ApprovedDate], [EmpID]) VALUES (511, CAST(N'2025-05-06T15:50:09.4466667' AS DateTime2), 0, CAST(N'2025-05-11T15:50:09.4466667' AS DateTime2), NULL, NULL, N'23e82280-3f44-4c43-8b85-02fd375b267e')
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [CreationDate], [StatusID], [ExpectedDate], [ApprovedBy], [ApprovedDate], [EmpID]) VALUES (512, CAST(N'2025-05-06T15:50:45.0000000' AS DateTime2), 0, CAST(N'2025-05-11T15:50:45.0000000' AS DateTime2), NULL, NULL, N'23e82280-3f44-4c43-8b85-02fd375b267e')
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [CreationDate], [StatusID], [ExpectedDate], [ApprovedBy], [ApprovedDate], [EmpID]) VALUES (513, CAST(N'2025-05-06T15:57:11.6400000' AS DateTime2), 0, CAST(N'2025-05-11T15:57:11.6400000' AS DateTime2), NULL, NULL, N'23e82280-3f44-4c43-8b85-02fd375b267e')
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [CreationDate], [StatusID], [ExpectedDate], [ApprovedBy], [ApprovedDate], [EmpID]) VALUES (514, CAST(N'2025-05-06T15:58:54.4200000' AS DateTime2), 0, CAST(N'2025-05-11T15:58:54.4200000' AS DateTime2), NULL, NULL, N'25153b3d-8f68-4065-8468-3ef57f6483af')
SET IDENTITY_INSERT [dbo].[PurchaseOrders] OFF
GO
INSERT [dbo].[ShoppingCart] ([CartID], [ProductID], [ProductName], [StandardCost], [QuantityToOrder]) VALUES (N'85b24841-23c1-438e-9734-491bc44e1bd9', 103, N'Northwind Traders Tea', 2.0000, 45)
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([SupplierID], [Company], [LastName], [FirstName], [BusinessPhone], [City], [State], [SupplierImage]) VALUES (300, N'Supplier A', N'Anderson', N'Elizabeth', NULL, N'Pittsburgh', N'PA', N'SupplierImage.jpg')
INSERT [dbo].[Suppliers] ([SupplierID], [Company], [LastName], [FirstName], [BusinessPhone], [City], [State], [SupplierImage]) VALUES (301, N'Supplier B', N'Weiler', N'Cornelia', NULL, N'Washington', N'DC', N'SupplierImage.jpg')
INSERT [dbo].[Suppliers] ([SupplierID], [Company], [LastName], [FirstName], [BusinessPhone], [City], [State], [SupplierImage]) VALUES (302, N'Supplier C', N'Glasson', N'Stuart', NULL, N'Houston', N'TX', N'SupplierImage.jpg')
INSERT [dbo].[Suppliers] ([SupplierID], [Company], [LastName], [FirstName], [BusinessPhone], [City], [State], [SupplierImage]) VALUES (303, N'Supplier D', N'Sandberg', N'Mikael', NULL, N'Dallas', N'TX', N'SupplierImage.jpg')
INSERT [dbo].[Suppliers] ([SupplierID], [Company], [LastName], [FirstName], [BusinessPhone], [City], [State], [SupplierImage]) VALUES (304, N'Supplier E', N'Sousa', N'Luis', NULL, N'Savannah', N'GA', N'SupplierImage.jpg')
INSERT [dbo].[Suppliers] ([SupplierID], [Company], [LastName], [FirstName], [BusinessPhone], [City], [State], [SupplierImage]) VALUES (305, N'Supplier F', N'Dunton', N'Bryan', NULL, N'Austin', N'TX', N'SupplierImage.jpg')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 5/26/2025 3:30:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/26/2025 3:30:09 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 5/26/2025 3:30:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 5/26/2025 3:30:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 5/26/2025 3:30:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 5/26/2025 3:30:09 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/26/2025 3:30:09 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InventoryTransactions] ADD  CONSTRAINT [DF_InventoryTransactions_TransactionType]  DEFAULT ((1)) FOR [TransactionType]
GO
ALTER TABLE [dbo].[InventoryTransactions] ADD  CONSTRAINT [DF_InventoryTransactions_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Discontinued]  DEFAULT ((0)) FOR [Discontinued]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Reordered]
GO
ALTER TABLE [dbo].[PurchaseOrderDetails] ADD  CONSTRAINT [DF_PurchaseOrderDetails_PostedToInventory]  DEFAULT ((0)) FOR [PostedToInventory]
GO
ALTER TABLE [dbo].[PurchaseOrders] ADD  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [dbo].[PurchaseOrders] ADD  DEFAULT ((0)) FOR [StatusID]
GO
ALTER TABLE [dbo].[PurchaseOrders] ADD  DEFAULT (getdate()+(5)) FOR [ExpectedDate]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[InventoryTransactions]  WITH CHECK ADD  CONSTRAINT [FK_InventoryTransactions_PurchaseOrders] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[InventoryTransactions] CHECK CONSTRAINT [FK_InventoryTransactions_PurchaseOrders]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Category]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
ALTER TABLE [dbo].[PurchaseOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[PurchaseOrderDetails] CHECK CONSTRAINT [FK_PurchaseOrderDetails_Products]
GO
ALTER TABLE [dbo].[PurchaseOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderDetails_PurchaseOrder] FOREIGN KEY([PurchaseOrderID])
REFERENCES [dbo].[PurchaseOrders] ([PurchaseOrderID])
GO
ALTER TABLE [dbo].[PurchaseOrderDetails] CHECK CONSTRAINT [FK_PurchaseOrderDetails_PurchaseOrder]
GO
ALTER TABLE [dbo].[ShoppingCart]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[ShoppingCart] CHECK CONSTRAINT [FK_ShoppingCart_Products]
GO
/****** Object:  StoredProcedure [dbo].[spAddPurchaseOrderDetail]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[spAddPurchaseOrderDetail]
(@PurchaseOrderID int,
@ProductID int,
@Quantity int,
@UnitCost money, -- should be named ListPrice in table
@OrderDetailID int out)

AS
BEGIN
	Insert into PurchaseOrderDetails (PurchaseOrderID, ProductID, Quantity, UnitCost)
	Values (@PurchaseOrderID, @ProductID, @Quantity, @UnitCost);
	
	set @orderDetailID = scope_identity();
END

GO
/****** Object:  StoredProcedure [dbo].[spAddToInventory]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spAddToInventory]
(@prodid int)
AS

BEGIN

	declare @quantity int
	declare @purchaseorderid int

	select @quantity = quantity, @purchaseorderid = purchaseorderid
	from purchaseorderdetails
	where productid = @prodid

	insert into inventorytransactions (productid, quantity, purchaseorderid, comments)
	values (@prodid, @quantity, @purchaseorderid, 'none')
	
	declare @transactionid int = scope_identity()


	update PurchaseOrderDetails
	set postedtoinventory = 1, inventoryid = @transactionid
	where ProductID = @prodid

	update products
	set reordered = 0, availableqty = availableqty + @quantity
	where productid = @prodid




END
GO
/****** Object:  StoredProcedure [dbo].[spAddUserInfoToDB]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[spAddUserInfoToDB]
@UserName nvarchar(50),
@EmpId char(36)
AS

	insert into Employees(EmpId, Username)
	values (@EmpId, @UserName)
GO
/****** Object:  StoredProcedure [dbo].[spCalcFinalPriceForOrderDetail]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[spCalcFinalPriceForOrderDetail]
(@OrderDetailID int)
AS

BEGIN
	Select (quantity * unitcost) 
	from PurchaseOrderDetails
	where OrderDetailID = @OrderDetailID
	
END

GO
/****** Object:  StoredProcedure [dbo].[spCalcOrderTotal]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[spCalcOrderTotal]
(@PurchaseOrderID int)

AS
BEGIN

	select sum(Quantity *  UnitCost) from PurchaseOrderDetails
	where purchaseorderID = @PurchaseOrderID

END

GO
/****** Object:  StoredProcedure [dbo].[spCreateCustomerOrder]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[spCreateCustomerOrder]
(@cartID char(36), @newOrderID int out)
as
	Begin Transaction
	Insert into PurchaseOrders (EmpID) Values (@cartID) 

	set @newOrderID = SCOPE_IDENTITY()

	insert into PurchaseOrderDetails(PurchaseOrderID, ProductID, ProductName, Quantity, UnitCost) 
	Select @newOrderID, ProductID, ProductName, QuantityToOrder, StandardCost from ShoppingCart
	where CartID = @cartID

	Delete from ShoppingCart where cartID = @cartID

	if XACT_STATE() = 1
		COMMIT TRANSACTION
	else
		ROLLBACK TRANSACTION
GO
/****** Object:  StoredProcedure [dbo].[spCreatePurchaseOrder]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spCreatePurchaseOrder]

(@CartID char(36), @EmpID char(36))

AS
BEGIN
	/* Insert a new record into Orders */
	DECLARE @PurchaseOrderID int
	INSERT INTO PurchaseOrders (EmpID) VALUES (@EmpID)
	
	/* Save the new Order ID */
	SET @PurchaseOrderID = scope_identity()
	
	/* Add the order details to OrderDetail */
	INSERT INTO PurchaseOrderDetails
	(PurchaseOrderID, ProductID, ProductName, Quantity, UnitCost)
	
	SELECT
	@PurchaseOrderID, ProductID, ProductName, QuantityToOrder, StandardCost
	FROM ShoppingCart
	WHERE CartID = @CartID

	/* Clear the shopping cart */
	DELETE FROM ShoppingCart
	WHERE CartID = @CartID

	

END



GO
/****** Object:  StoredProcedure [dbo].[spDeleteProduct]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[spDeleteProduct]
(@prodID int)
as
	Delete from Products
	where ProductID = @prodID
GO
/****** Object:  StoredProcedure [dbo].[spDeletePurchaseOrderDetail]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[spDeletePurchaseOrderDetail]
(@OrderDetailID int)
AS

BEGIN
	Delete from PurchaseOrderDetails
	where OrderDetailID = @OrderDetailID

END

GO
/****** Object:  StoredProcedure [dbo].[spGetAllCategories]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[spGetAllCategories]
as
begin 
	select categoryID, CategoryName
	from category
end

GO
/****** Object:  StoredProcedure [dbo].[spGetEmployeeID]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spGetEmployeeID]
		@UserName nvarchar(50),
		@EmpID nvarchar output
		AS

			select @EmpID = EmpID from Employees
			where username = @UserName
GO
/****** Object:  StoredProcedure [dbo].[spGetOrderItems]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[spGetOrderItems]
(@orderID int)
as
	Select ProductName, Quantity, UnitCost
	from PurchaseOrderDetails
	where PurchaseOrderID = @orderID
GO
/****** Object:  StoredProcedure [dbo].[spGetProductByID]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[spGetProductByID]
(@prodID int)
as
	Select * from Products
	where ProductID = @prodID
GO
/****** Object:  StoredProcedure [dbo].[spGetProductsByCategoryID]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[spGetProductsByCategoryID]
(@categoryID int)
as
	Select * from Products
	where CategoryID = @categoryID
GO
/****** Object:  StoredProcedure [dbo].[spInsertProduct]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   proc [dbo].[spInsertProduct]
(@ProductCode nvarchar(50), @ProductName nvarchar(100), @Description nvarchar(100), @CategoryID int, @StandardCost money, @ListPrice money, @ReorderLevel int, @TargetLevel int, @Discontinued bit, @SupplierID int, @AvailableQty int, @Reordered bit, @prodimage nvarchar(30))
as
	Insert into Products (ProductCode, ProductName, Description, CategoryID, StandardCost, ListPrice, ReorderLevel, TargetLevel, Discontinued, SupplierID, AvailableQty, Reordered, prodimage)
	Values (@ProductCode, @ProductName, @Description, @CategoryID, @StandardCost, @ListPrice, @ReorderLevel, @TargetLevel, @Discontinued, @SupplierID, @AvailableQty, @Reordered, @prodimage)
GO
/****** Object:  StoredProcedure [dbo].[spShoppingCartAdditem]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   proc [dbo].[spShoppingCartAdditem]
(@cartid char(36),
@prodid int
)
AS

BEGIN

	if Not exists
	(Select Cartid from shoppingcart 
	where cartid=@cartid and productid=@prodid)
	
	begin
			declare @productname nvarchar(100)
			declare @standardcost money
			declare @quantitytoorder int

			Select @productname = productname, @standardcost = standardcost,
			@quantitytoorder = targetlevel - availableqty
			from products 
			where productid = @prodid

			insert into shoppingcart (cartID, ProductID, ProductName, StandardCost, QuantityToOrder)
			values(@cartID, @prodID, @productname, @standardcost, @quantitytoorder)

			Update Products
			set Reordered = 1
			where productid = @prodid
	end

END

GO
/****** Object:  StoredProcedure [dbo].[spShoppingCartGetItems]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[spShoppingCartGetItems]
(@cartID char(36))
as
	Select CartID, ProductID, ProductName, StandardCost, QuantityToOrder, (QuantityToOrder * StandardCost) as Subtotal from ShoppingCart
	where CartID = @cartID
GO
/****** Object:  StoredProcedure [dbo].[spShoppingCartGetTotalAmount]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[spShoppingCartGetTotalAmount]
(@cartID char(36))
as
	Select isNull(SUM(QuantityToOrder * StandardCost), 0) as Subtotal from ShoppingCart
	where CartID = @cartID
GO
/****** Object:  StoredProcedure [dbo].[spShoppingCartRemoveItem]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[spShoppingCartRemoveItem]
(@cartID char(36), @prodID int)
as
	Delete from ShoppingCart where CartID = @cartID and ProductID = @prodID
GO
/****** Object:  StoredProcedure [dbo].[spShoppingCartUpdateItem]    Script Date: 5/26/2025 3:30:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   proc [dbo].[spShoppingCartUpdateItem]
(@cartID char(36), @prodID int, @qty int)
as
	IF @qty <= 0
		exec spShoppingCartRemoveItem @cartID, @prodID
	
	ELSE
		Update ShoppingCart 
		Set QuantityToOrder = @qty
		where CartID = @cartID and ProductID = @prodID
GO
USE [master]
GO
ALTER DATABASE [NWDbFinalSpring2025] SET  READ_WRITE 
GO
