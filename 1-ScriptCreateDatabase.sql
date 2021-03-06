CREATE DATABASE [db_tp_final]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_tp_final', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\db_tp_final.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_tp_final_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\db_tp_final_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [db_tp_final] SET COMPATIBILITY_LEVEL = 130
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_tp_final].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [db_tp_final] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [db_tp_final] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [db_tp_final] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [db_tp_final] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [db_tp_final] SET ARITHABORT OFF 
GO

ALTER DATABASE [db_tp_final] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [db_tp_final] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [db_tp_final] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [db_tp_final] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [db_tp_final] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [db_tp_final] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [db_tp_final] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [db_tp_final] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [db_tp_final] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [db_tp_final] SET  DISABLE_BROKER 
GO

ALTER DATABASE [db_tp_final] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [db_tp_final] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [db_tp_final] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [db_tp_final] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [db_tp_final] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [db_tp_final] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [db_tp_final] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [db_tp_final] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [db_tp_final] SET  MULTI_USER 
GO

ALTER DATABASE [db_tp_final] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [db_tp_final] SET DB_CHAINING OFF 
GO

ALTER DATABASE [db_tp_final] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [db_tp_final] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [db_tp_final] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [db_tp_final] SET QUERY_STORE = OFF
GO

USE [db_tp_final]
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO

ALTER DATABASE [db_tp_final] SET  READ_WRITE 
GO
