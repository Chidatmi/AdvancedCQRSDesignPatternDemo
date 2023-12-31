USE [master]
GO
/****** Object:  Database [CricketLeagueApp]    Script Date: 01-12-2023 05:13:14 PM ******/
CREATE DATABASE [CricketLeagueApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CricketLeagueApp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\CricketLeagueApp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CricketLeagueApp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\CricketLeagueApp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CricketLeagueApp] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CricketLeagueApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CricketLeagueApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CricketLeagueApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CricketLeagueApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CricketLeagueApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CricketLeagueApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [CricketLeagueApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CricketLeagueApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CricketLeagueApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CricketLeagueApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CricketLeagueApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CricketLeagueApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CricketLeagueApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CricketLeagueApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CricketLeagueApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CricketLeagueApp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CricketLeagueApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CricketLeagueApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CricketLeagueApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CricketLeagueApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CricketLeagueApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CricketLeagueApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CricketLeagueApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CricketLeagueApp] SET RECOVERY FULL 
GO
ALTER DATABASE [CricketLeagueApp] SET  MULTI_USER 
GO
ALTER DATABASE [CricketLeagueApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CricketLeagueApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CricketLeagueApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CricketLeagueApp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CricketLeagueApp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CricketLeagueApp] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CricketLeagueApp', N'ON'
GO
ALTER DATABASE [CricketLeagueApp] SET QUERY_STORE = OFF
GO
USE [CricketLeagueApp]
GO
/****** Object:  Table [dbo].[Club]    Script Date: 01-12-2023 05:13:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Club](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[PhotoUrl] [varchar](50) NULL,
	[WebsiteUrl] [varchar](50) NULL,
	[FacebookUrl] [varchar](50) NULL,
	[TwitterUrl] [varchar](50) NULL,
	[YoutubeUrl] [varchar](50) NULL,
	[InstagramUrl] [varchar](50) NULL,
	[StadiumId] [int] NULL,
 CONSTRAINT [PK_Club] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 01-12-2023 05:13:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[TwoLetterIsoCode] [varchar](50) NULL,
	[ThreeLetterIsoCode] [varchar](50) NULL,
	[FlagUrl] [varchar](50) NULL,
	[DisplayOrder] [varchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 01-12-2023 05:13:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[ShirtNo] [int] NULL,
	[ClubId] [int] NULL,
	[PlayerPositionId] [int] NULL,
	[PhotoUrl] [varchar](50) NULL,
	[CountryId] [int] NULL,
	[BirthDate] [datetime] NULL,
	[HeightInCm] [int] NULL,
	[FacebookUrl] [varchar](50) NULL,
	[TwitterUrl] [varchar](50) NULL,
	[InstagramUrl] [varchar](50) NULL,
	[DisplayOrder] [int] NULL,
 CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stadium]    Script Date: 01-12-2023 05:13:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stadium](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[PhotoUrl] [varchar](50) NULL,
	[Capacity] [int] NULL,
	[BuiltYear] [int] NULL,
	[PitchLength] [int] NULL,
	[PitchWidth] [int] NULL,
	[Phone] [varchar](50) NULL,
	[AddressLine1] [varchar](50) NULL,
	[AddressLine2] [varchar](50) NULL,
	[AddressLine3] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[PostalCode] [varchar](50) NULL,
	[CountryId] [int] NULL,
 CONSTRAINT [PK_Stadium] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [CricketLeagueApp] SET  READ_WRITE 
GO
