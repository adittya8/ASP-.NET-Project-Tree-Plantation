USE [master]
GO
/****** Object:  Database [tree_plantation_db]    Script Date: 11/1/2021 3:47:01 PM ******/
CREATE DATABASE [tree_plantation_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tree_plantation_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\tree_plantation_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'tree_plantation_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\tree_plantation_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [tree_plantation_db] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tree_plantation_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tree_plantation_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tree_plantation_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tree_plantation_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tree_plantation_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tree_plantation_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [tree_plantation_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tree_plantation_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tree_plantation_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tree_plantation_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tree_plantation_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tree_plantation_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tree_plantation_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tree_plantation_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tree_plantation_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tree_plantation_db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tree_plantation_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tree_plantation_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tree_plantation_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tree_plantation_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tree_plantation_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tree_plantation_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tree_plantation_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tree_plantation_db] SET RECOVERY FULL 
GO
ALTER DATABASE [tree_plantation_db] SET  MULTI_USER 
GO
ALTER DATABASE [tree_plantation_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tree_plantation_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tree_plantation_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tree_plantation_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [tree_plantation_db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [tree_plantation_db] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'tree_plantation_db', N'ON'
GO
ALTER DATABASE [tree_plantation_db] SET QUERY_STORE = OFF
GO
USE [tree_plantation_db]
GO
/****** Object:  Table [dbo].[admins]    Script Date: 11/1/2021 3:47:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admins](
	[a_id] [int] IDENTITY(1,1) NOT NULL,
	[a_name] [varchar](500) NULL,
	[a_email] [varchar](500) NULL,
	[a_phone] [int] NULL,
	[a_address] [varchar](500) NULL,
	[a_image] [varchar](500) NULL,
 CONSTRAINT [PK_admins] PRIMARY KEY CLUSTERED 
(
	[a_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assigneds]    Script Date: 11/1/2021 3:47:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assigneds](
	[assigned_id] [int] IDENTITY(1,1) NOT NULL,
	[ass_id] [int] NULL,
	[v_id] [int] NULL,
 CONSTRAINT [PK_assigneds] PRIMARY KEY CLUSTERED 
(
	[assigned_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assignedtasks]    Script Date: 11/1/2021 3:47:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assignedtasks](
	[ass_id] [int] IDENTITY(1,1) NOT NULL,
	[u_id] [int] NULL,
	[t_id] [int] NULL,
 CONSTRAINT [PK_assignedtasks] PRIMARY KEY CLUSTERED 
(
	[ass_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assignments]    Script Date: 11/1/2021 3:47:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assignments](
	[a_id] [int] NULL,
	[amount] [int] NULL,
	[deadline] [varchar](100) NULL,
	[tree_number] [int] NULL,
	[time] [varchar](100) NULL,
	[status] [varchar](100) NULL,
	[ass_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_assignments] PRIMARY KEY CLUSTERED 
(
	[ass_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[authentications]    Script Date: 11/1/2021 3:47:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authentications](
	[au_id] [int] IDENTITY(1,1) NOT NULL,
	[a_id] [int] NULL,
	[a_email] [varchar](100) NULL,
	[a_password] [varchar](100) NULL,
	[a_type] [varchar](100) NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_authentications] PRIMARY KEY CLUSTERED 
(
	[au_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[donations]    Script Date: 11/1/2021 3:47:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[donations](
	[tran_id] [int] IDENTITY(1,1) NOT NULL,
	[d_id] [int] NULL,
	[amount] [int] NULL,
	[time] [varchar](50) NULL,
 CONSTRAINT [PK_donations] PRIMARY KEY CLUSTERED 
(
	[tran_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[donors]    Script Date: 11/1/2021 3:47:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[donors](
	[d_id] [int] IDENTITY(1,1) NOT NULL,
	[d_name] [varchar](50) NULL,
	[d_email] [varchar](50) NULL,
	[d_phone] [int] NULL,
	[d_address] [varchar](50) NULL,
	[d_image] [varchar](50) NULL,
 CONSTRAINT [PK_donors] PRIMARY KEY CLUSTERED 
(
	[d_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[requests]    Script Date: 11/1/2021 3:47:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[requests](
	[r_id] [int] IDENTITY(1,1) NOT NULL,
	[v_id] [int] NULL,
	[amount] [int] NULL,
	[time] [varchar](50) NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_requests] PRIMARY KEY CLUSTERED 
(
	[r_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tasks]    Script Date: 11/1/2021 3:47:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tasks](
	[t_id] [int] IDENTITY(1,1) NOT NULL,
	[prove_image] [varchar](500) NULL,
	[quantity] [varchar](500) NULL,
	[deadline] [varchar](500) NULL,
	[tree_type] [varchar](500) NULL,
	[status] [varchar](500) NULL,
	[v_id] [int] NULL,
 CONSTRAINT [PK_tasks] PRIMARY KEY CLUSTERED 
(
	[t_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 11/1/2021 3:47:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[u_id] [int] IDENTITY(1,1) NOT NULL,
	[u_name] [varchar](500) NULL,
	[u_phone] [int] NULL,
	[u_address] [varchar](500) NULL,
	[u_image] [varchar](500) NULL,
	[u_email] [varchar](500) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[volunteers]    Script Date: 11/1/2021 3:47:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[volunteers](
	[v_id] [int] IDENTITY(1,1) NOT NULL,
	[v_name] [varchar](50) NULL,
	[v_email] [varchar](50) NULL,
	[v_phone] [int] NULL,
	[v_address] [varchar](50) NULL,
	[v_image] [varchar](50) NULL,
 CONSTRAINT [PK_volunteers] PRIMARY KEY CLUSTERED 
(
	[v_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[assigneds]  WITH CHECK ADD  CONSTRAINT [FK_assigneds_assignments] FOREIGN KEY([ass_id])
REFERENCES [dbo].[assignments] ([ass_id])
GO
ALTER TABLE [dbo].[assigneds] CHECK CONSTRAINT [FK_assigneds_assignments]
GO
ALTER TABLE [dbo].[assigneds]  WITH CHECK ADD  CONSTRAINT [FK_assigneds_volunteers] FOREIGN KEY([v_id])
REFERENCES [dbo].[volunteers] ([v_id])
GO
ALTER TABLE [dbo].[assigneds] CHECK CONSTRAINT [FK_assigneds_volunteers]
GO
ALTER TABLE [dbo].[assignedtasks]  WITH CHECK ADD  CONSTRAINT [FK_assignedtasks_tasks] FOREIGN KEY([t_id])
REFERENCES [dbo].[tasks] ([t_id])
GO
ALTER TABLE [dbo].[assignedtasks] CHECK CONSTRAINT [FK_assignedtasks_tasks]
GO
ALTER TABLE [dbo].[assignedtasks]  WITH CHECK ADD  CONSTRAINT [FK_assignedtasks_users] FOREIGN KEY([u_id])
REFERENCES [dbo].[users] ([u_id])
GO
ALTER TABLE [dbo].[assignedtasks] CHECK CONSTRAINT [FK_assignedtasks_users]
GO
ALTER TABLE [dbo].[assignments]  WITH NOCHECK ADD  CONSTRAINT [FK_assignments_admins] FOREIGN KEY([a_id])
REFERENCES [dbo].[admins] ([a_id])
GO
ALTER TABLE [dbo].[assignments] CHECK CONSTRAINT [FK_assignments_admins]
GO
ALTER TABLE [dbo].[authentications]  WITH CHECK ADD  CONSTRAINT [FK_authentications_admins] FOREIGN KEY([a_id])
REFERENCES [dbo].[admins] ([a_id])
GO
ALTER TABLE [dbo].[authentications] CHECK CONSTRAINT [FK_authentications_admins]
GO
ALTER TABLE [dbo].[donations]  WITH CHECK ADD  CONSTRAINT [FK_donations_donors] FOREIGN KEY([d_id])
REFERENCES [dbo].[donors] ([d_id])
GO
ALTER TABLE [dbo].[donations] CHECK CONSTRAINT [FK_donations_donors]
GO
ALTER TABLE [dbo].[requests]  WITH CHECK ADD  CONSTRAINT [FK_requests_volunteers] FOREIGN KEY([v_id])
REFERENCES [dbo].[volunteers] ([v_id])
GO
ALTER TABLE [dbo].[requests] CHECK CONSTRAINT [FK_requests_volunteers]
GO
ALTER TABLE [dbo].[tasks]  WITH CHECK ADD  CONSTRAINT [FK_tasks_volunteers] FOREIGN KEY([v_id])
REFERENCES [dbo].[volunteers] ([v_id])
GO
ALTER TABLE [dbo].[tasks] CHECK CONSTRAINT [FK_tasks_volunteers]
GO
USE [master]
GO
ALTER DATABASE [tree_plantation_db] SET  READ_WRITE 
GO
