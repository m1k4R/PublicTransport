USE [master]
GO
/****** Object:  Database [PublicTransportDB]    Script Date: 7/10/2019 3:24:29 PM ******/
CREATE DATABASE [PublicTransportDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PublicTransportDB', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PublicTransportDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PublicTransportDB_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PublicTransportDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PublicTransportDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PublicTransportDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PublicTransportDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PublicTransportDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PublicTransportDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PublicTransportDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PublicTransportDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [PublicTransportDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PublicTransportDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PublicTransportDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PublicTransportDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PublicTransportDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PublicTransportDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PublicTransportDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PublicTransportDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PublicTransportDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PublicTransportDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PublicTransportDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PublicTransportDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PublicTransportDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PublicTransportDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PublicTransportDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PublicTransportDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [PublicTransportDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PublicTransportDB] SET RECOVERY FULL 
GO
ALTER DATABASE [PublicTransportDB] SET  MULTI_USER 
GO
ALTER DATABASE [PublicTransportDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PublicTransportDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PublicTransportDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PublicTransportDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PublicTransportDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PublicTransportDB', N'ON'
GO
ALTER DATABASE [PublicTransportDB] SET QUERY_STORE = OFF
GO
USE [PublicTransportDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/10/2019 3:24:31 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adresses]    Script Date: 7/10/2019 3:24:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Street] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Number] [nvarchar](max) NULL,
	[TableVersion] [timestamp] NULL,
 CONSTRAINT [PK_Adresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/10/2019 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/10/2019 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/10/2019 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/10/2019 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/10/2019 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/10/2019 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
	[AddressId] [int] NULL,
	[UserType] [nvarchar](max) NULL,
	[AccountStatus] [nvarchar](max) NULL,
	[DocumentUrl] [nvarchar](max) NULL,
	[PublicId] [nvarchar](max) NULL,
	[Verified] [bit] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/10/2019 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Busses]    Script Date: 7/10/2019 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Busses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LocationId] [int] NULL,
	[BusNumber] [int] NOT NULL,
	[InUse] [bit] NOT NULL,
	[LineId] [int] NULL,
	[TableVersion] [timestamp] NULL,
 CONSTRAINT [PK_Busses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 7/10/2019 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[TableVersion] [timestamp] NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lines]    Script Date: 7/10/2019 3:24:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lines](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LineNumber] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[TimetableId] [int] NULL,
	[TableVersion] [timestamp] NULL,
 CONSTRAINT [PK_Lines] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 7/10/2019 3:24:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[X] [float] NOT NULL,
	[Y] [float] NOT NULL,
	[TableVersion] [timestamp] NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paypals]    Script Date: 7/10/2019 3:24:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paypals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cart] [nvarchar](max) NULL,
	[CreateTime] [nvarchar](max) NULL,
	[PaypalId] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[PayerId] [nvarchar](max) NULL,
	[PaymentMethod] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[Currency] [nvarchar](max) NULL,
	[Total] [nvarchar](max) NULL,
 CONSTRAINT [PK_Paypals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PricelistItems]    Script Date: 7/10/2019 3:24:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PricelistItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NULL,
	[PricelistId] [int] NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[TableVersion] [timestamp] NULL,
 CONSTRAINT [PK_PricelistItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricelists]    Script Date: 7/10/2019 3:24:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricelists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[From] [datetime2](7) NOT NULL,
	[To] [datetime2](7) NOT NULL,
	[Active] [bit] NOT NULL,
	[TableVersion] [timestamp] NULL,
 CONSTRAINT [PK_Pricelists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StationLines]    Script Date: 7/10/2019 3:24:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StationLines](
	[LineId] [int] NOT NULL,
	[StationId] [int] NOT NULL,
	[TableVersion] [timestamp] NULL,
 CONSTRAINT [PK_StationLines] PRIMARY KEY CLUSTERED 
(
	[LineId] ASC,
	[StationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stations]    Script Date: 7/10/2019 3:24:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[AddressId] [int] NULL,
	[LocationId] [int] NULL,
	[TableVersion] [timestamp] NULL,
 CONSTRAINT [PK_Stations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 7/10/2019 3:24:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateOfIssue] [datetime2](7) NOT NULL,
	[TicketType] [nvarchar](max) NULL,
	[IsValid] [bit] NOT NULL,
	[UserId] [int] NULL,
	[PriceInfoId] [int] NULL,
	[TableVersion] [timestamp] NULL,
 CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeTables]    Script Date: 7/10/2019 3:24:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTables](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NULL,
	[Day] [nvarchar](max) NULL,
	[LineId] [int] NULL,
	[Departures] [nvarchar](max) NULL,
	[LineId1] [int] NULL,
	[TableVersion] [timestamp] NULL,
 CONSTRAINT [PK_TimeTables] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDiscounts]    Script Date: 7/10/2019 3:24:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDiscounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NULL,
	[Value] [float] NOT NULL,
	[TableVersion] [timestamp] NULL,
 CONSTRAINT [PK_UserDiscounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190613191227_NewInitialMigration', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190613192756_NullableFKLine', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190614092947_lineToTimetable', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190614100641_mrr', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190614115834_ConflictResolver', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190707101318_newmigration', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190707131429_paypalmig', N'2.1.11-servicing-32099')
SET IDENTITY_INSERT [dbo].[Adresses] ON 

INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (1, N'Ulica', N'Grad', N'Broj')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (2, N'Ulica', N'Grad', N'Broj')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (3, N'Ulica', N'Grad', N'Broj')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (4, N'Ulica', N'Grad', N'Broj')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (5, N'Ulica', N'Grad', N'Broj')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (6, N'Bulevar Jovana Ducica', N'Novi Sad', N'21000')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (7, N'Bulevar Kneza Milosa', N'Novi Sad', N'21000')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (8, N'Bulevar Kneza Milosa', N'Novi Sad', N'21000')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (9, N'Bulevar Kneza Milosa', N'Novi Sad', N'21000')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (10, N'Bulevar Kneza Milosa', N'Novi Sad', N'21000')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (11, N'Bulevar Kneza Milosa', N'Novi Sad', N'21000')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (12, N'Bulevar Jase Tomica', N'Novi Sad', N'21101')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (13, N'Bulevar oslobodjenja 30', N'Novi Sad', N'21101')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (14, N'Bulevar oslobodjenja 66a', N'Novi Sad', N'21101')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (15, N'Bulevar Kneza Milosa', N'Novi Sad', N'21000')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (16, N'Jevrejska 31', N'Novi Sad', N'21101')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (17, N'Centar', N'Novi Sad', N'21101')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (18, N'Bulevar Jase Tomica', N'Novi Sad', N'21101')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (19, N'Bulevar Jase Tomica', N'Novi Sad', N'21101')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (20, N'Strazilovska', N'Novi Sad', N'21101')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (21, N'Izvor, Bulevar Cara Lazara', N'Novi Sad', N'21101')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (22, N'Narodnog fronta 1', N'Novi Sad', N'21101')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (23, N'Narodnog fronta', N'Novi Sad', N'21101')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (24, N'Narodnog fronta', N'Novi Sad', N'21101')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (25, N'Centar', N'Novi Sad', N'21101')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (26, N'Jovana Subotica', N'Novi Sad', N'21000')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (27, N'Bulevar Kneza Milosa', N'Novi Sad', N'21000')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (28, N'Bulevar Kneza Milosa', N'Novi Sad', N'21000')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (29, N'Bulevar Kneza Milosa', N'Novi Sad', N'21000')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (30, N'Bulevar Kneza Milosa', N'Novi Sad', N'21000')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (31, N'Bulevar Kneza Milosa', N'Novi Sad', N'21000')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (32, N'Bulevar Kneza Milosa', N'Novi Sad', N'21000')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (33, N'Bulevar Kneza Milosa', N'Novi Sad', N'21000')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (34, N'Bulevar Kneza Milosa', N'Novi Sad', N'21000')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (35, N'Bulevar Kneza Milosa', N'Novi Sad', N'21000')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (36, N'Bulevar Kneza Milosa', N'Novi Sad', N'21000')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (37, N'Bulevar Kneza Milosa', N'Novi Sad', N'21000')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (38, N'Fruskogorska', N'Novi Sad', N'1')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (39, N'Fruskogorska', N'Novi Sad', N'5')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (40, N'Fruskogorska', N'Novi Sad', N'12')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (41, N'Bulevar Cara Lazara', N'Novi Sad', N'8')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (42, N'Strazilovska', N'Novi Sad', N'3')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (43, N'Zarka Zrenjanina', N'Novi Sad', N'4')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (44, N'Nn', N'Novi Sad', N'50')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (45, N'Bulevar Mihajla Pupina', N'Novi Sad', N'2')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (46, N'Bulevar Mihajla Pupina', N'Novi Sad', N'55')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (47, N'Pozoriste', N'Novi Sad', N'21')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (48, N'Nn', N'Novi Sad', N'11')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (49, N'Trg Marije Trandafil', N'Novi Sad', N'78')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (50, N'Kisacka', N'Novi Sad', N'1')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (51, N'Kisacka', N'Novi Sad', N'50')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (52, N'Partizanska', N'Novi Sad', N'12')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (53, N'Sentandrejski put', N'Novi Sad', N'18')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (54, N'ZelSt', N'Novi Sad', N'10')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (55, N'Bulevar Oslobodjenja', N'Novi Sad', N'8')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (56, N'Bulevar Oslobodjenja', N'Novi Sad', N'45')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (57, N'Jevrejska', N'Novi Sad', N'12')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (58, N'Bulevar Oslobodjenja', N'Novi Sad', N'78')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (59, N'Jevrejska', N'Novi Sad', N'18')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (60, N'Bulevar Mihajla Pupina', N'Novi Sad', N'10')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (61, N'Poreska', N'Novi Sad', N'78')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (62, N'Zarka Zrenjanina', N'Novi Sad', N'18')
INSERT [dbo].[Adresses] ([Id], [Street], [City], [Number]) VALUES (63, N'Strazilovska', N'Novi Sad', N'78')
SET IDENTITY_INSERT [dbo].[Adresses] OFF
SET IDENTITY_INSERT [dbo].[AspNetRoles] ON 

INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (1, N'Passenger', N'PASSENGER', N'44463d77-6925-4906-8869-bf602f9bb1aa')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (2, N'Controller', N'CONTROLLER', N'01b54a05-3050-43fa-b95c-131ce19c1a75')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (3, N'Admin', N'ADMIN', N'b1637ac8-9dea-435c-a8ae-fc97495eee11')
SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (1, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (2, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (3, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (4, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (5, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (7, 2)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (6, 3)
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [Surname], [DateOfBirth], [AddressId], [UserType], [AccountStatus], [DocumentUrl], [PublicId], [Verified]) VALUES (1, N'User0', N'USER0', N'user0@gmail.com', N'USER0@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEM3iZWDM27jWVCYp7mo+JHYulQK58z8FI2++c36zSot+aLiBg7iO3PjNyorhjERVHw==', N'ZQMOWHPOPLK5752Z6QE2JEXY3KAXX4MH', N'0ec5364b-3c01-4c2e-b9c1-0c04e6a650b0', NULL, 0, 0, NULL, 1, 0, N'Pera 0', N'Peric 0', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'Regular', N'Pending activation', NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [Surname], [DateOfBirth], [AddressId], [UserType], [AccountStatus], [DocumentUrl], [PublicId], [Verified]) VALUES (2, N'User1', N'USER1', N'user1@gmail.com', N'USER1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJULzsWev5JcYb1vWov/CPy6HKJfgQnoUpMFxa5jjmky1HvfyW6xa1qlnmRoaQF27g==', N'2XPLTG6QJIR3NABXIGQHS43RXUQAGCXK', N'05f2b1e5-21ee-4de4-8b7a-8293d86f08c0', NULL, 0, 0, NULL, 1, 0, N'Pera 1', N'Peric 1', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 2, N'Regular', N'Pending activation', NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [Surname], [DateOfBirth], [AddressId], [UserType], [AccountStatus], [DocumentUrl], [PublicId], [Verified]) VALUES (3, N'User2', N'USER2', N'user2@gmail.com', N'USER2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELVwdpE+FFCPJMnQSb5CLrqyBd0IjSO+CgbSdTMzvgH0riDUYHk9Vj1F8lc+1SjgUA==', N'PKQTVD33LVEOUE4WG4ZADPZD7NWZRB4H', N'20b408e6-2ec1-4596-870e-891c78343744', NULL, 0, 0, NULL, 1, 0, N'Pera 2', N'Peric 2', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 3, N'Regular', N'Pending activation', NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [Surname], [DateOfBirth], [AddressId], [UserType], [AccountStatus], [DocumentUrl], [PublicId], [Verified]) VALUES (4, N'User3', N'USER3', N'user3@gmail.com', N'USER3@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENCk3KYjPmFrHgYlaWXVjeN1L+je/go7gXdM2EGVLH4YphsG+mXtmkoVSD1+wo8c4g==', N'IMQXBXX56ER35WX44LUTM55AODGQULS5', N'32305e58-bd52-45f6-a336-62e538ada473', NULL, 0, 0, NULL, 1, 0, N'Pera 3', N'Peric 3', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 4, N'Regular', N'Pending activation', NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [Surname], [DateOfBirth], [AddressId], [UserType], [AccountStatus], [DocumentUrl], [PublicId], [Verified]) VALUES (5, N'User4', N'USER4', N'user4@gmail.com', N'USER4@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOj/q4NKEi8oMkU1uPeqmp2a8PisBPiftYcLm22ZPD/n2HqN2yZ5H7Yca+DVWC1K4g==', N'VA7JOND6LIRJUCF6TZ2APTQG3M6GEFWG', N'b8afb59e-40c4-4830-b26b-f3d06effebb2', NULL, 0, 0, NULL, 1, 0, N'Pera 4', N'Peric 4', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 5, N'Regular', N'Pending activation', NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [Surname], [DateOfBirth], [AddressId], [UserType], [AccountStatus], [DocumentUrl], [PublicId], [Verified]) VALUES (6, N'Admin', N'ADMIN', N'admin@publictransport.com', N'ADMIN@PUBLICTRANSPORT.COM', 0, N'AQAAAAEAACcQAAAAEB4B/I8HoiDcs8vsmB9h3zZuCC3oG4EfBUfTKEAUBJ0BNJhh6woA4+FqbR09eC3P5A==', N'7VGCN7ONWKITSPEHPSPIBWFLM4K7RKUB', N'2fb4a7f8-aa4c-4432-81c2-9f49bb6d047e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [Surname], [DateOfBirth], [AddressId], [UserType], [AccountStatus], [DocumentUrl], [PublicId], [Verified]) VALUES (7, N'Controller', N'CONTROLLER', N'controller@publictransport.com', N'CONTROLLER@PUBLICTRANSPORT.COM', 0, N'AQAAAAEAACcQAAAAEN509wkXRkdZmJDhhIS48GW9pBj5X5KKN6OPZEYCeQh3EQ36toL4rU3WJTfrjSM88Q==', N'3T2IMBKORPM6QD3477GWAG64WFXCGO7E', N'50267f24-ac43-4a55-ba9d-d9aa336043e3', NULL, 0, 0, NULL, 1, 0, NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
SET IDENTITY_INSERT [dbo].[Busses] ON 

INSERT [dbo].[Busses] ([Id], [LocationId], [BusNumber], [InUse], [LineId]) VALUES (1, NULL, 354, 1, 1)
INSERT [dbo].[Busses] ([Id], [LocationId], [BusNumber], [InUse], [LineId]) VALUES (2, NULL, 789, 1, 1)
INSERT [dbo].[Busses] ([Id], [LocationId], [BusNumber], [InUse], [LineId]) VALUES (3, NULL, 135, 1, 1)
INSERT [dbo].[Busses] ([Id], [LocationId], [BusNumber], [InUse], [LineId]) VALUES (4, NULL, 234, 1, 2)
INSERT [dbo].[Busses] ([Id], [LocationId], [BusNumber], [InUse], [LineId]) VALUES (5, NULL, 222, 1, 2)
INSERT [dbo].[Busses] ([Id], [LocationId], [BusNumber], [InUse], [LineId]) VALUES (6, NULL, 244, 1, 2)
INSERT [dbo].[Busses] ([Id], [LocationId], [BusNumber], [InUse], [LineId]) VALUES (7, NULL, 3504, 1, 3)
INSERT [dbo].[Busses] ([Id], [LocationId], [BusNumber], [InUse], [LineId]) VALUES (8, NULL, 1174, 1, 3)
INSERT [dbo].[Busses] ([Id], [LocationId], [BusNumber], [InUse], [LineId]) VALUES (9, NULL, 1458, 0, NULL)
SET IDENTITY_INSERT [dbo].[Busses] OFF
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([Id], [Type], [Description]) VALUES (1, N'Daily', N'This ticket is valid until 00:00 next day')
INSERT [dbo].[Items] ([Id], [Type], [Description]) VALUES (2, N'Hourly', N'This ticket is valid just for one hour')
INSERT [dbo].[Items] ([Id], [Type], [Description]) VALUES (3, N'Monthly', N'This ticket is valid for one month')
INSERT [dbo].[Items] ([Id], [Type], [Description]) VALUES (4, N'Annual', N'This ticket is valid for one year')
SET IDENTITY_INSERT [dbo].[Items] OFF
SET IDENTITY_INSERT [dbo].[Lines] ON 

INSERT [dbo].[Lines] ([Id], [LineNumber], [Name], [TimetableId]) VALUES (1, 4, N'ZELEZNICKA STANICA - CENTAR - LIMAN 4', 4)
INSERT [dbo].[Lines] ([Id], [LineNumber], [Name], [TimetableId]) VALUES (2, 8, N'NOVO NASELJE - CENTAR - STRAND', 1)
INSERT [dbo].[Lines] ([Id], [LineNumber], [Name], [TimetableId]) VALUES (3, 1, N'STRAND - CENTAR - KLISA', 3)
SET IDENTITY_INSERT [dbo].[Lines] OFF
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (1, 45.24775, 19.849104)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (2, 45.260318, 19.842785)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (3, 45.260678, 19.833057)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (4, 45.237289068480194, 19.826809252488488)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (5, 45.248643, 19.792551)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (6, 45.240371403960239, 19.837623919236535)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (7, 45.256089, 19.841208)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (8, 45.242536275738352, 19.847495978753159)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (9, 45.250305, 19.791516)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (10, 45.245512572690778, 19.846830790917465)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (11, 45.253385, 19.843214)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (12, 45.247753458479686, 19.84917113443862)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (13, 45.24562, 19.846819)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (14, 45.251227988570491, 19.846853705849753)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (15, 45.25344, 19.789697)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (16, 45.2534938719465, 19.84743306299697)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (17, 45.238989, 19.847967)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (18, 45.254104, 19.807508)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (19, 45.26446733929329, 19.829593939230563)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (20, 45.257155, 19.816241)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (21, 45.260011877178329, 19.832297605917574)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (22, 45.258862, 19.822775)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (23, 45.254622275399008, 19.835259585621429)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (24, 45.251023, 19.798561)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (25, 45.251580428954867, 19.836825717285478)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (26, 45.251204, 19.796821)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (27, 45.2626, 19.839689)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (28, 45.253521, 19.847516)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (29, 45.253181652640421, 19.84401403744539)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (30, 45.255003, 19.794144)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (31, 45.25127, 19.84684)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (32, 45.253906720214019, 19.842361796692217)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (33, 45.239247775812636, 19.848108463298217)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (34, 45.240794811135657, 19.847899537840362)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (35, 45.244173968571637, 19.847413759735446)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (36, 45.245619887933962, 19.847571460368272)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (37, 45.2479687021315, 19.849401171368982)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (38, 45.251432376304621, 19.847187970150685)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (39, 45.253276604923393, 19.847820870349324)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (40, 45.2537934406057, 19.847074662280193)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (41, 45.253651426656411, 19.843625832971497)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (42, 45.254752023862167, 19.842391442837197)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (43, 45.255818504880523, 19.841724808548747)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (44, 45.260061567361305, 19.84302204866276)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (45, 45.260765920926083, 19.842734848094096)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (46, 45.265224297459319, 19.836481646004586)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (47, 45.268600313081933, 19.832278522736715)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (48, 45.2757905633153, 19.829799253802548)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (49, 45.264463028803227, 19.829659289237725)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (50, 45.260092694588451, 19.832187247317506)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (51, 45.254880871194658, 19.83506810128506)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (52, 45.252123013122905, 19.837898837848343)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (53, 45.252165874339035, 19.836593675447148)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (54, 45.254026985095727, 19.842263434581241)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (55, 45.253244432578022, 19.844054985201865)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (56, 45.253498402353522, 19.847444851349678)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (57, 45.251596806388655, 19.846834066511747)
INSERT [dbo].[Locations] ([Id], [X], [Y]) VALUES (58, 45.250334454078711, 19.847663891274919)
SET IDENTITY_INSERT [dbo].[Locations] OFF
SET IDENTITY_INSERT [dbo].[Paypals] ON 

INSERT [dbo].[Paypals] ([Id], [Cart], [CreateTime], [PaypalId], [Email], [FirstName], [LastName], [PayerId], [PaymentMethod], [Status], [State], [Currency], [Total]) VALUES (1, N'5Y592468TB010014N', N'2019-07-08T13:10:55Z', N'PAYID-LURUBNI9H013238LA068322F', N'test-buyer@publictransport.net', N'Luna', N'Savic', N'7XQN3ETCFG96E', N'paypal', N'VERIFIED', N'approved', N'USD', N'150.00')
INSERT [dbo].[Paypals] ([Id], [Cart], [CreateTime], [PaypalId], [Email], [FirstName], [LastName], [PayerId], [PaymentMethod], [Status], [State], [Currency], [Total]) VALUES (2, N'19230960X77988703', N'2019-07-10T11:39:30Z', N'PAYID-LUS44VQ0VL41803MK703051Y', N'test-buyer@publictransport.net', N'Luna', N'Savic', N'7XQN3ETCFG96E', N'paypal', N'VERIFIED', N'approved', N'USD', N'150.00')
SET IDENTITY_INSERT [dbo].[Paypals] OFF
SET IDENTITY_INSERT [dbo].[PricelistItems] ON 

INSERT [dbo].[PricelistItems] ([Id], [ItemId], [PricelistId], [Price]) VALUES (1, 2, 1, CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[PricelistItems] ([Id], [ItemId], [PricelistId], [Price]) VALUES (2, 1, 1, CAST(390.00 AS Decimal(18, 2)))
INSERT [dbo].[PricelistItems] ([Id], [ItemId], [PricelistId], [Price]) VALUES (3, 3, 1, CAST(3450.00 AS Decimal(18, 2)))
INSERT [dbo].[PricelistItems] ([Id], [ItemId], [PricelistId], [Price]) VALUES (4, 4, 1, CAST(12050.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[PricelistItems] OFF
SET IDENTITY_INSERT [dbo].[Pricelists] ON 

INSERT [dbo].[Pricelists] ([Id], [From], [To], [Active]) VALUES (1, CAST(N'2019-07-07T12:29:44.7266749' AS DateTime2), CAST(N'2019-11-07T12:29:44.9384244' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Pricelists] OFF
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (3, 33)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (3, 34)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (3, 35)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (3, 36)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (3, 37)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (3, 38)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (3, 39)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (3, 40)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (3, 41)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (3, 42)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (3, 43)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (3, 44)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (3, 45)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (3, 46)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (3, 47)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (3, 48)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (1, 49)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (1, 50)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (1, 51)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (1, 52)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (1, 53)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (1, 54)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (1, 55)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (1, 56)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (1, 57)
INSERT [dbo].[StationLines] ([LineId], [StationId]) VALUES (1, 58)
SET IDENTITY_INSERT [dbo].[Stations] ON 

INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (33, N'Strand', 38, 33)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (34, N'Fruskogorska', 39, 34)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (35, N'FTN', 40, 35)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (36, N'Vlahovic', 41, 36)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (37, N'Strazilovska', 42, 37)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (38, N'Isidorina Gimnazija', 43, 38)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (39, N'Poreska', 44, 39)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (40, N'Modena', 45, 40)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (41, N'Bazar', 46, 41)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (42, N'Pozoriste', 47, 42)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (43, N'Centar', 48, 43)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (44, N'Trandafil', 49, 44)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (45, N'Kisacka', 50, 45)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (46, N'KisackaSk', 51, 46)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (47, N'Partizanska', 52, 47)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (48, N'Big', 53, 48)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (49, N'Zeleznicka stanica', 54, 49)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (50, N'Lutrija', 55, 50)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (51, N'Aleksandar zgrada', 56, 51)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (52, N'Futoska pijaca', 57, 52)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (53, N'LiliFutoska', 58, 53)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (54, N'Jevrejska', 59, 54)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (55, N'Bazar2', 60, 55)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (56, N'Poreska2', 61, 56)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (57, N'Isidora2', 62, 57)
INSERT [dbo].[Stations] ([Id], [Name], [AddressId], [LocationId]) VALUES (58, N'Strazilovksa2', 63, 58)
SET IDENTITY_INSERT [dbo].[Stations] OFF
SET IDENTITY_INSERT [dbo].[Tickets] ON 

INSERT [dbo].[Tickets] ([Id], [DateOfIssue], [TicketType], [IsValid], [UserId], [PriceInfoId]) VALUES (1, CAST(N'2019-07-07T14:51:25.5544825' AS DateTime2), N'Hourly', 0, NULL, 1)
INSERT [dbo].[Tickets] ([Id], [DateOfIssue], [TicketType], [IsValid], [UserId], [PriceInfoId]) VALUES (2, CAST(N'2019-07-07T20:26:50.5503289' AS DateTime2), N'Hourly', 1, NULL, 1)
INSERT [dbo].[Tickets] ([Id], [DateOfIssue], [TicketType], [IsValid], [UserId], [PriceInfoId]) VALUES (3, CAST(N'2019-07-07T20:45:33.4581067' AS DateTime2), N'Hourly', 1, NULL, 1)
INSERT [dbo].[Tickets] ([Id], [DateOfIssue], [TicketType], [IsValid], [UserId], [PriceInfoId]) VALUES (4, CAST(N'2019-07-07T21:20:15.6503702' AS DateTime2), N'Hourly', 1, NULL, 1)
INSERT [dbo].[Tickets] ([Id], [DateOfIssue], [TicketType], [IsValid], [UserId], [PriceInfoId]) VALUES (5, CAST(N'2019-07-07T21:46:38.4309537' AS DateTime2), N'Hourly', 0, NULL, 1)
INSERT [dbo].[Tickets] ([Id], [DateOfIssue], [TicketType], [IsValid], [UserId], [PriceInfoId]) VALUES (6, CAST(N'2019-07-07T21:50:56.5597086' AS DateTime2), N'Hourly', 1, NULL, 1)
INSERT [dbo].[Tickets] ([Id], [DateOfIssue], [TicketType], [IsValid], [UserId], [PriceInfoId]) VALUES (7, CAST(N'2019-07-07T22:54:55.1572560' AS DateTime2), N'Hourly', 1, NULL, 1)
INSERT [dbo].[Tickets] ([Id], [DateOfIssue], [TicketType], [IsValid], [UserId], [PriceInfoId]) VALUES (8, CAST(N'2019-07-08T00:46:45.1963796' AS DateTime2), N'Hourly', 1, NULL, 1)
INSERT [dbo].[Tickets] ([Id], [DateOfIssue], [TicketType], [IsValid], [UserId], [PriceInfoId]) VALUES (9, CAST(N'2019-07-08T02:13:49.7963160' AS DateTime2), N'Hourly', 1, NULL, 1)
INSERT [dbo].[Tickets] ([Id], [DateOfIssue], [TicketType], [IsValid], [UserId], [PriceInfoId]) VALUES (10, CAST(N'2019-07-08T13:27:12.4230668' AS DateTime2), N'Hourly', 1, NULL, 1)
INSERT [dbo].[Tickets] ([Id], [DateOfIssue], [TicketType], [IsValid], [UserId], [PriceInfoId]) VALUES (11, CAST(N'2019-07-08T13:56:37.4085913' AS DateTime2), N'Hourly', 1, NULL, 1)
INSERT [dbo].[Tickets] ([Id], [DateOfIssue], [TicketType], [IsValid], [UserId], [PriceInfoId]) VALUES (12, CAST(N'2019-07-08T15:11:09.3843688' AS DateTime2), N'Hourly', 1, NULL, 1)
INSERT [dbo].[Tickets] ([Id], [DateOfIssue], [TicketType], [IsValid], [UserId], [PriceInfoId]) VALUES (13, CAST(N'2019-07-10T13:39:33.6619225' AS DateTime2), N'Hourly', 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Tickets] OFF
SET IDENTITY_INSERT [dbo].[TimeTables] ON 

INSERT [dbo].[TimeTables] ([Id], [Type], [Day], [LineId], [Departures], [LineId1]) VALUES (1, N'In City', N'Working day', 2, N'00:12-22-25-34-40-45-58/01:30/02:30/03:30/04:30/05:30/06:00-20-40/07:03-12-23-30-45-58/08:13-22-25-30-45-58/09:03-12-23-30-45-58/10:03-12-23-30-45-58/11:03-12-23-30-45-58/12:03-12-23-30-45-58/13:03-12-23-30-45-58/14:03-12-23-30-45-58/15:03-12-23-30-45-58/16:03-12-23-30-45-58/17:00-23-30-40-58/18:00-23-30-40-58/19:00-23-30-40-58/20:00-23-40-58/21:00-23-40-58/22:00-23-40-58/23:00-30-58', NULL)
INSERT [dbo].[TimeTables] ([Id], [Type], [Day], [LineId], [Departures], [LineId1]) VALUES (2, N'In City', N'Working day', 1, N'00:12-25-34-40-45-58/01:30/02:30/03:30/04:30/05:30/06:00-25-40/07:03-14-23-37-45-52/08:13-22-25-30-45-58/09:03-12-30-45-58/10:03-12-27-30-41-58/11:03-12-23-30-45-58/12:03-12-23-30-45-58/13:03-12-23-30-45-58/14:03-12-23-30-45-58/15:03-12-23-30-45-58/16:03-12-23-30-45-58/17:00-23-30-40-58/18:00-23-30-40-58/19:00-23-30-40-58/20:00-23-40-58/21:00-23-40-58/22:00-23-40-58/23:00-30-58', NULL)
INSERT [dbo].[TimeTables] ([Id], [Type], [Day], [LineId], [Departures], [LineId1]) VALUES (3, N'In City', N'Working day', 3, N'00:00-/05:30-/06:00-20-40-/07:02-20-35-48-55-/08:00-12-18-22-28-35-42-50-57-/09:05-10-15-20-27-36-47-50-58-/10:04-15-21-24-30-35-40-45-50-55-/11:02-08-16-20-25-34-39-42-48-50-57-/12:10-15-20-25-30-35-40-45-50-55-/13:08-14-21-34-38-42-49-52-59-/14:08-18-24-29-31-38-45-52-58-/15:00-07-15-24-30-35-40-45-50-55-/16:00-07-18-24-30-35-40-45-50-55-/17:00-07-18-24-30-35-40-45-50-55-/18:10-20-30-40-50-/19:10-20-30-40-50-/20:25-35-50-55-/21:10-25-35-50-/22:20-40-/23:20-40-/', NULL)
INSERT [dbo].[TimeTables] ([Id], [Type], [Day], [LineId], [Departures], [LineId1]) VALUES (4, N'In City', N'Sunday', 1, N'00:00-/05:30-/06:00-30-/07:00-20-40-/08:00-20-40-/09:00-15-30-45-/10:00-15-3-/', NULL)
SET IDENTITY_INSERT [dbo].[TimeTables] OFF
SET IDENTITY_INSERT [dbo].[UserDiscounts] ON 

INSERT [dbo].[UserDiscounts] ([Id], [Type], [Value]) VALUES (1, N'Student', 20)
INSERT [dbo].[UserDiscounts] ([Id], [Type], [Value]) VALUES (2, N'Regular', 0)
INSERT [dbo].[UserDiscounts] ([Id], [Type], [Value]) VALUES (3, N'Senior', 35)
SET IDENTITY_INSERT [dbo].[UserDiscounts] OFF
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 7/10/2019 3:24:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/10/2019 3:24:35 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 7/10/2019 3:24:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 7/10/2019 3:24:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 7/10/2019 3:24:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 7/10/2019 3:24:35 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_AddressId]    Script Date: 7/10/2019 3:24:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_AddressId] ON [dbo].[AspNetUsers]
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/10/2019 3:24:35 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Busses_LineId]    Script Date: 7/10/2019 3:24:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_Busses_LineId] ON [dbo].[Busses]
(
	[LineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Busses_LocationId]    Script Date: 7/10/2019 3:24:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_Busses_LocationId] ON [dbo].[Busses]
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PricelistItems_ItemId]    Script Date: 7/10/2019 3:24:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_PricelistItems_ItemId] ON [dbo].[PricelistItems]
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PricelistItems_PricelistId]    Script Date: 7/10/2019 3:24:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_PricelistItems_PricelistId] ON [dbo].[PricelistItems]
(
	[PricelistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StationLines_StationId]    Script Date: 7/10/2019 3:24:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_StationLines_StationId] ON [dbo].[StationLines]
(
	[StationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Stations_AddressId]    Script Date: 7/10/2019 3:24:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_Stations_AddressId] ON [dbo].[Stations]
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Stations_LocationId]    Script Date: 7/10/2019 3:24:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_Stations_LocationId] ON [dbo].[Stations]
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tickets_PriceInfoId]    Script Date: 7/10/2019 3:24:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_Tickets_PriceInfoId] ON [dbo].[Tickets]
(
	[PriceInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tickets_UserId]    Script Date: 7/10/2019 3:24:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_Tickets_UserId] ON [dbo].[Tickets]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TimeTables_LineId1]    Script Date: 7/10/2019 3:24:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_TimeTables_LineId1] ON [dbo].[TimeTables]
(
	[LineId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Adresses_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Adresses] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Adresses_AddressId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Busses]  WITH CHECK ADD  CONSTRAINT [FK_Busses_Lines_LineId] FOREIGN KEY([LineId])
REFERENCES [dbo].[Lines] ([Id])
GO
ALTER TABLE [dbo].[Busses] CHECK CONSTRAINT [FK_Busses_Lines_LineId]
GO
ALTER TABLE [dbo].[Busses]  WITH CHECK ADD  CONSTRAINT [FK_Busses_Locations_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Locations] ([Id])
GO
ALTER TABLE [dbo].[Busses] CHECK CONSTRAINT [FK_Busses_Locations_LocationId]
GO
ALTER TABLE [dbo].[PricelistItems]  WITH CHECK ADD  CONSTRAINT [FK_PricelistItems_Items_ItemId] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([Id])
GO
ALTER TABLE [dbo].[PricelistItems] CHECK CONSTRAINT [FK_PricelistItems_Items_ItemId]
GO
ALTER TABLE [dbo].[PricelistItems]  WITH CHECK ADD  CONSTRAINT [FK_PricelistItems_Pricelists_PricelistId] FOREIGN KEY([PricelistId])
REFERENCES [dbo].[Pricelists] ([Id])
GO
ALTER TABLE [dbo].[PricelistItems] CHECK CONSTRAINT [FK_PricelistItems_Pricelists_PricelistId]
GO
ALTER TABLE [dbo].[StationLines]  WITH CHECK ADD  CONSTRAINT [FK_StationLines_Lines_LineId] FOREIGN KEY([LineId])
REFERENCES [dbo].[Lines] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StationLines] CHECK CONSTRAINT [FK_StationLines_Lines_LineId]
GO
ALTER TABLE [dbo].[StationLines]  WITH CHECK ADD  CONSTRAINT [FK_StationLines_Stations_StationId] FOREIGN KEY([StationId])
REFERENCES [dbo].[Stations] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StationLines] CHECK CONSTRAINT [FK_StationLines_Stations_StationId]
GO
ALTER TABLE [dbo].[Stations]  WITH CHECK ADD  CONSTRAINT [FK_Stations_Adresses_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Adresses] ([Id])
GO
ALTER TABLE [dbo].[Stations] CHECK CONSTRAINT [FK_Stations_Adresses_AddressId]
GO
ALTER TABLE [dbo].[Stations]  WITH CHECK ADD  CONSTRAINT [FK_Stations_Locations_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Locations] ([Id])
GO
ALTER TABLE [dbo].[Stations] CHECK CONSTRAINT [FK_Stations_Locations_LocationId]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_PricelistItems_PriceInfoId] FOREIGN KEY([PriceInfoId])
REFERENCES [dbo].[PricelistItems] ([Id])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_PricelistItems_PriceInfoId]
GO
ALTER TABLE [dbo].[TimeTables]  WITH CHECK ADD  CONSTRAINT [FK_TimeTables_Lines_LineId1] FOREIGN KEY([LineId1])
REFERENCES [dbo].[Lines] ([Id])
GO
ALTER TABLE [dbo].[TimeTables] CHECK CONSTRAINT [FK_TimeTables_Lines_LineId1]
GO
USE [master]
GO
ALTER DATABASE [PublicTransportDB] SET  READ_WRITE 
GO
