USE [master]
GO
/****** Object:  Database [CHBS]    Script Date: 4/23/2024 10:42:12 PM ******/
CREATE DATABASE [CHBS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CHBS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\CHBS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CHBS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\CHBS_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [CHBS] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CHBS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CHBS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CHBS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CHBS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CHBS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CHBS] SET ARITHABORT OFF 
GO
ALTER DATABASE [CHBS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CHBS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CHBS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CHBS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CHBS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CHBS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CHBS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CHBS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CHBS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CHBS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CHBS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CHBS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CHBS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CHBS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CHBS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CHBS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CHBS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CHBS] SET RECOVERY FULL 
GO
ALTER DATABASE [CHBS] SET  MULTI_USER 
GO
ALTER DATABASE [CHBS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CHBS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CHBS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CHBS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CHBS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CHBS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CHBS', N'ON'
GO
ALTER DATABASE [CHBS] SET QUERY_STORE = ON
GO
ALTER DATABASE [CHBS] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CHBS]
GO
/****** Object:  Table [dbo].[chitiethdb]    Script Date: 4/23/2024 10:42:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethdb](
	[sohdb] [nvarchar](50) NOT NULL,
	[masach] [nvarchar](50) NOT NULL,
	[soluong] [float] NOT NULL,
	[giaban] [float] NOT NULL,
	[khuyenmai] [float] NOT NULL,
	[thanhtien] [float] NOT NULL,
 CONSTRAINT [PK_chitiethdb] PRIMARY KEY CLUSTERED 
(
	[sohdb] ASC,
	[masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chitiethdn]    Script Date: 4/23/2024 10:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethdn](
	[sohdn] [nvarchar](50) NOT NULL,
	[masach] [nvarchar](50) NOT NULL,
	[soluong] [float] NOT NULL,
	[gianhap] [float] NOT NULL,
	[khuyenmai] [float] NULL,
	[thanhtien] [float] NOT NULL,
 CONSTRAINT [PK_chitiethdn] PRIMARY KEY CLUSTERED 
(
	[sohdn] ASC,
	[masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[congviec]    Script Date: 4/23/2024 10:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[congviec](
	[macongviec] [nvarchar](50) NOT NULL,
	[tencongviec] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_congviec] PRIMARY KEY CLUSTERED 
(
	[macongviec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hdb]    Script Date: 4/23/2024 10:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hdb](
	[sohdb] [nvarchar](50) NOT NULL,
	[manhanvien] [nvarchar](50) NOT NULL,
	[ngayban] [datetime] NOT NULL,
	[makhach] [nvarchar](50) NOT NULL,
	[tongtien] [float] NOT NULL,
 CONSTRAINT [PK_hdb] PRIMARY KEY CLUSTERED 
(
	[sohdb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hdn]    Script Date: 4/23/2024 10:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hdn](
	[sohdn] [nvarchar](50) NOT NULL,
	[manhanvien] [nvarchar](50) NOT NULL,
	[ngaynhap] [datetime] NOT NULL,
	[mancc] [nvarchar](50) NOT NULL,
	[tongtien] [float] NOT NULL,
 CONSTRAINT [PK_hdn] PRIMARY KEY CLUSTERED 
(
	[sohdn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 4/23/2024 10:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[makhach] [nvarchar](50) NOT NULL,
	[tenkhach] [nvarchar](50) NOT NULL,
	[dienthoai] [nvarchar](50) NOT NULL,
	[diachi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_khachhang] PRIMARY KEY CLUSTERED 
(
	[makhach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaisach]    Script Date: 4/23/2024 10:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaisach](
	[maloaisach] [nvarchar](50) NOT NULL,
	[tenloaisach] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_loaisach] PRIMARY KEY CLUSTERED 
(
	[maloaisach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ncc]    Script Date: 4/23/2024 10:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ncc](
	[mancc] [nvarchar](50) NOT NULL,
	[tenncc] [nvarchar](50) NOT NULL,
	[diachi] [nvarchar](50) NOT NULL,
	[dienthoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ncc] PRIMARY KEY CLUSTERED 
(
	[mancc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 4/23/2024 10:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[manhanvien] [nvarchar](50) NOT NULL,
	[tennhanvien] [nvarchar](50) NOT NULL,
	[dienthoai] [nvarchar](50) NOT NULL,
	[diachi] [nvarchar](50) NOT NULL,
	[macongviec] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_nhanvien] PRIMARY KEY CLUSTERED 
(
	[manhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nxb]    Script Date: 4/23/2024 10:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nxb](
	[manxb] [nvarchar](50) NOT NULL,
	[tennxb] [nvarchar](50) NOT NULL,
	[diachi] [nvarchar](50) NOT NULL,
	[dienthoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_nxb] PRIMARY KEY CLUSTERED 
(
	[manxb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sach]    Script Date: 4/23/2024 10:42:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sach](
	[masach] [nvarchar](50) NOT NULL,
	[tensach] [nvarchar](50) NOT NULL,
	[soluong] [float] NOT NULL,
	[gianhap] [float] NOT NULL,
	[giaban] [float] NOT NULL,
	[maloaisach] [nvarchar](50) NOT NULL,
	[manxb] [nvarchar](50) NOT NULL,
	[anh] [nvarchar](200) NULL,
 CONSTRAINT [PK_sach] PRIMARY KEY CLUSTERED 
(
	[masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HD1', N'S02', 1, 660000, 0, 660000)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HD1', N'S03', 12, 550000, 0, 6600000)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HDB4142024140331', N'S03', 2, 550000, 0, 1100000)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HDB4142024140331', N'S05', 1, 352000, 0, 352000)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HDB4142024141544', N'S01', 2, 25300, 0, 1100000)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HDB4142024141544', N'S03', 2, 550000, 0, 1100000)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HDB4142024141607', N'S08', 2, 57200, 0, 114400)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HDB4142024142405', N'S04', 1, 16500, 0, 16500)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HDB4142024142757', N'S10', 1, 770000, 0, 770000)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HDB4142024214144', N'S02', 5, 660000, 5, 3135000)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HDB4142024214144', N'S03', 5, 550000, 10, 2475000)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HDB4142024215016', N'S02', 10, 660000, 15, 5610000)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HDB4152024084204', N'S01', 10, 25300, 5, 240350)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HDB4152024084204', N'S04', 20, 16500, 10, 297000)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HDB4192024094622', N'S04', 1, 16500, 0, 16500)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HDB4192024132546', N'S20', 1, 231000, 0, 231000)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HDB4192024132546', N'S27', 2, 85800, 0, 171600)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HDB4192024132546', N'S29', 1, 104500, 0, 104500)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HDB421202404827', N'S04', 1, 16500, 0, 16500)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HDB4232024164626', N'S02', 1, 660000, 0, 660000)
INSERT [dbo].[chitiethdb] ([sohdb], [masach], [soluong], [giaban], [khuyenmai], [thanhtien]) VALUES (N'HDB4232024164642', N'S22', 1, 66000, 0, 66000)
GO
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4142024140246', N'S03', 1, 500000, 0, 500000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4142024140246', N'S06', 2, 45000, 0, 90000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4152024142832', N'S27', 1, 78000, 0, 15000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4152024142832', N'S29', 1, 95000, 0, 95000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4162024205705', N'S04', 3, 15000, 0, 45000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4162024210639', N'S04', 3, 15000, 0, 45000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4162024210847', N'S03', 3, 500000, 0, 1500000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4162024210938', N'S04', 3, 15000, 0, 45000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4162024213546', N'S02', 3, 600000, 0, 1800000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4162024214734', N'S02', 4, 600000, 0, 2400000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4162024214734', N'S04', 2, 15000, 0, 30000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4162024214750', N'S02', 3, 600000, 0, 1800000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4162024214940', N'S05', 3, 320000, 0, 960000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4162024215110', N'S03', 3, 500000, 4, 1440000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4162024215410', N'S03', 3, 500000, 0, 1500000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4162024215656', N'S04', 3, 15000, 0, 45000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4162024221042', N'S04', 3, 15000, 0, 45000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4172024100803', N'S22', 1, 59000, 0, 59000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4172024205951', N'S06', 3, 45000, 0, 135000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4172024210457', N'S04', 3, 15000, 0, 45000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4172024210823', N'S04', 3, 15000, 0, 45000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4172024211418', N'S04', 3, 15000, 0, 45000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4172024214147', N'S04', 3, 15000, 0, 45000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4172024214300', N'S04', 4, 15000, 0, 60000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB41720242156315327ff7e1c47', N'S06', 3, 45000, 0, 135000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4172024220300', N'S07', 4, 320000, 0, 1280000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4172024221449', N'S04', 4, 15000, 0, 60000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4172024221906', N'S06', 4, 45000, 0, 180000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4172024222521', N'S05', 4, 320000, 0, 1280000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4172024222521', N'S07', 3, 320000, 0, 960000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4172024222551', N'S03', 3, 500000, 0, 1500000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4172024222904', N'S07', 3, 320000, 0, 960000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4172024223352', N'S05', 4, 320000, 0, 1280000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4172024223550', N'S06', 4, 45000, 4, 172800)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4212024092207', N'S30', 1, 112000, 0, 110000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4212024092543', N'S30', 1, 110000, 0, 110000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4212024104700', N'S03', 2, 500000, 0, 1000000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4212024201342', N'S22', 2, 60000, 0, 120000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4232024155302', N'S01', 1, 23000, 0, 23000)
INSERT [dbo].[chitiethdn] ([sohdn], [masach], [soluong], [gianhap], [khuyenmai], [thanhtien]) VALUES (N'HDB4232024155302', N'S03', 1, 500000, 0, 500000)
GO
INSERT [dbo].[congviec] ([macongviec], [tencongviec]) VALUES (N'CV01', N'Quản lý')
INSERT [dbo].[congviec] ([macongviec], [tencongviec]) VALUES (N'CV02', N'Thủ kho')
INSERT [dbo].[congviec] ([macongviec], [tencongviec]) VALUES (N'CV03', N'Kế toán')
INSERT [dbo].[congviec] ([macongviec], [tencongviec]) VALUES (N'CV04', N'Thu ngân ')
INSERT [dbo].[congviec] ([macongviec], [tencongviec]) VALUES (N'CV05', N'Nhân viên')
GO
INSERT [dbo].[hdb] ([sohdb], [manhanvien], [ngayban], [makhach], [tongtien]) VALUES (N'HD1', N'NV08', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'KH01', 7760000)
INSERT [dbo].[hdb] ([sohdb], [manhanvien], [ngayban], [makhach], [tongtien]) VALUES (N'HDB4142024140331', N'NV05', CAST(N'2024-04-14T00:00:00.000' AS DateTime), N'KH06', 1452000)
INSERT [dbo].[hdb] ([sohdb], [manhanvien], [ngayban], [makhach], [tongtien]) VALUES (N'HDB4142024141544', N'NV03', CAST(N'2024-04-14T00:00:00.000' AS DateTime), N'KH05', 2200000)
INSERT [dbo].[hdb] ([sohdb], [manhanvien], [ngayban], [makhach], [tongtien]) VALUES (N'HDB4142024141607', N'NV04', CAST(N'2024-04-14T00:00:00.000' AS DateTime), N'KH01', 114400)
INSERT [dbo].[hdb] ([sohdb], [manhanvien], [ngayban], [makhach], [tongtien]) VALUES (N'HDB4142024142405', N'NV04', CAST(N'2024-04-14T00:00:00.000' AS DateTime), N'KH03', 16500)
INSERT [dbo].[hdb] ([sohdb], [manhanvien], [ngayban], [makhach], [tongtien]) VALUES (N'HDB4142024142757', N'NV04', CAST(N'2024-04-14T00:00:00.000' AS DateTime), N'KH03', 770000)
INSERT [dbo].[hdb] ([sohdb], [manhanvien], [ngayban], [makhach], [tongtien]) VALUES (N'HDB4142024214144', N'NV10', CAST(N'2024-04-14T00:00:00.000' AS DateTime), N'KH19', 5610000)
INSERT [dbo].[hdb] ([sohdb], [manhanvien], [ngayban], [makhach], [tongtien]) VALUES (N'HDB4142024215016', N'NV04', CAST(N'2024-04-14T00:00:00.000' AS DateTime), N'KH06', 5610000)
INSERT [dbo].[hdb] ([sohdb], [manhanvien], [ngayban], [makhach], [tongtien]) VALUES (N'HDB4152024084204', N'NV09', CAST(N'2024-04-15T00:00:00.000' AS DateTime), N'KH22', 537350)
INSERT [dbo].[hdb] ([sohdb], [manhanvien], [ngayban], [makhach], [tongtien]) VALUES (N'HDB4192024094622', N'NV01', CAST(N'2024-04-19T00:00:00.000' AS DateTime), N'KH11', 16500)
INSERT [dbo].[hdb] ([sohdb], [manhanvien], [ngayban], [makhach], [tongtien]) VALUES (N'HDB4192024132546', N'NV09', CAST(N'2024-04-19T00:00:00.000' AS DateTime), N'KH05', 507100)
INSERT [dbo].[hdb] ([sohdb], [manhanvien], [ngayban], [makhach], [tongtien]) VALUES (N'HDB421202404827', N'NV09', CAST(N'2024-04-21T00:00:00.000' AS DateTime), N'KH04', 16500)
INSERT [dbo].[hdb] ([sohdb], [manhanvien], [ngayban], [makhach], [tongtien]) VALUES (N'HDB4232024164626', N'NV10', CAST(N'2024-01-23T00:00:00.000' AS DateTime), N'KH02', 660000)
INSERT [dbo].[hdb] ([sohdb], [manhanvien], [ngayban], [makhach], [tongtien]) VALUES (N'HDB4232024164642', N'NV08', CAST(N'2024-01-23T00:00:00.000' AS DateTime), N'KH02', 66000)
GO
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4142024140246', N'NV03', CAST(N'2024-04-14T00:00:00.000' AS DateTime), N'NCC03', 590000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4152024142832', N'NV10', CAST(N'2024-04-15T00:00:00.000' AS DateTime), N'NCC03', 110000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4162024205705', N'NV03', CAST(N'2024-04-16T00:00:00.000' AS DateTime), N'NCC03', 45000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4162024210639', N'NV02', CAST(N'2024-04-16T00:00:00.000' AS DateTime), N'NCC04', 45000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4162024210847', N'NV04', CAST(N'2024-04-16T00:00:00.000' AS DateTime), N'NCC02', 1500000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4162024210938', N'NV05', CAST(N'2024-04-16T00:00:00.000' AS DateTime), N'NCC02', 45000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4162024213546', N'NV02', CAST(N'2024-04-16T00:00:00.000' AS DateTime), N'NCC03', 1800000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4162024214734', N'NV02', CAST(N'2024-04-16T00:00:00.000' AS DateTime), N'NCC04', 2430000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4162024214750', N'NV04', CAST(N'2024-04-16T00:00:00.000' AS DateTime), N'NCC04', 1800000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4162024214940', N'NV03', CAST(N'2024-04-16T00:00:00.000' AS DateTime), N'NCC03', 960000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4162024214948', N'NV05', CAST(N'2024-04-16T00:00:00.000' AS DateTime), N'NCC05', 0)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4162024215110', N'NV03', CAST(N'2023-04-16T00:00:00.000' AS DateTime), N'NCC04', 1440000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4162024215410', N'NV02', CAST(N'2024-04-16T21:54:14.000' AS DateTime), N'NCC03', 1500000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4162024215656', N'NV04', CAST(N'2024-04-16T21:57:01.000' AS DateTime), N'NCC04', 45000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4162024221042', N'NV03', CAST(N'2024-04-16T00:00:00.000' AS DateTime), N'NCC02', 45000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024100803', N'NV02', CAST(N'2024-04-17T00:00:00.000' AS DateTime), N'NCC02', 59000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024205951', N'NV02', CAST(N'2024-04-17T00:00:00.000' AS DateTime), N'NCC03', 135000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024210457', N'NV03', CAST(N'2024-04-17T21:04:57.000' AS DateTime), N'NCC03', 45000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024210823', N'NV03', CAST(N'2024-04-17T21:08:23.000' AS DateTime), N'NCC03', 45000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024211418', N'NV02', CAST(N'2024-04-17T21:14:18.000' AS DateTime), N'NCC03', 45000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024211706', N'NV03', CAST(N'2024-04-17T21:17:06.000' AS DateTime), N'NCC03', 0)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024212507', N'NV03', CAST(N'2024-04-17T00:00:00.000' AS DateTime), N'NCC02', 0)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024212616', N'NV02', CAST(N'2024-04-17T00:00:00.000' AS DateTime), N'NCC03', 0)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024213151', N'NV04', CAST(N'2024-04-17T00:00:00.000' AS DateTime), N'NCC02', 0)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024214147', N'NV03', CAST(N'2024-04-17T00:00:00.000' AS DateTime), N'NCC05', 45000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024214300', N'NV03', CAST(N'2024-04-17T00:00:00.000' AS DateTime), N'NCC04', 60000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB41720242154005425', N'NV03', CAST(N'2024-04-17T00:00:00.000' AS DateTime), N'NCC03', 0)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB41720242156315327ff7e1c47', N'NV03', CAST(N'2024-04-17T00:00:00.000' AS DateTime), N'NCC01', 135000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024220300', N'NV03', CAST(N'2024-04-17T00:00:00.000' AS DateTime), N'NCC04', 1280000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024221449', N'NV04', CAST(N'2024-04-17T00:00:00.000' AS DateTime), N'NCC04', 60000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024221906', N'NV03', CAST(N'2024-04-17T22:19:06.000' AS DateTime), N'NCC04', 180000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024222345', N'NV03', CAST(N'2024-04-17T00:00:00.000' AS DateTime), N'NCC04', 0)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024222521', N'NV01', CAST(N'2024-04-17T00:00:00.000' AS DateTime), N'NCC02', 2240000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024222551', N'NV03', CAST(N'2024-04-17T00:00:00.000' AS DateTime), N'NCC02', 1500000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024222904', N'NV03', CAST(N'2024-04-17T00:00:00.000' AS DateTime), N'NCC04', 960000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024223352', N'NV02', CAST(N'2024-04-17T00:00:00.000' AS DateTime), N'NCC02', 1280000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4172024223550', N'NV04', CAST(N'2024-04-17T00:00:00.000' AS DateTime), N'NCC03', 172800)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4212024092207', N'NV01', CAST(N'2024-04-21T00:00:00.000' AS DateTime), N'NCC01', 110000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4212024092543', N'NV02', CAST(N'2024-04-21T00:00:00.000' AS DateTime), N'NCC01', 110000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4212024104700', N'NV02', CAST(N'2024-04-21T00:00:00.000' AS DateTime), N'NCC03', 1000000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4212024201342', N'NV02', CAST(N'2024-04-21T00:00:00.000' AS DateTime), N'NCC03', 120000)
INSERT [dbo].[hdn] ([sohdn], [manhanvien], [ngaynhap], [mancc], [tongtien]) VALUES (N'HDB4232024155302', N'NV02', CAST(N'2024-04-23T00:00:00.000' AS DateTime), N'NCC03', 523000)
GO
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH01', N'Đào Nguyễn Thành Đạt', N'0933668665', N'Hai Bà Trưng - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH02', N'Lê Mỹ Duyên', N'0968531829', N'Đông Anh - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH03', N'Phạm Thị Khuyên', N'0948992883', N'Hà Đông - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH04', N'Trần Thị Sao Mai', N'0875964458', N'Đống Đa - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH05', N'Nguyễn Thu Huyền', N'0903476865', N'Hai Bà Trưng - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH06', N'Phạm Thị Hương', N'0914453588', N'Long Biên - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH07', N'Lê Quý Lam', N'0948157159', N'Cầu Giấy - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH08', N'Phạm Thanh Bình', N'0912300247', N'Sóc Sơn - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH09', N'Nguyễn Hữu Tâm', N'0915133607', N'Hoàng Mai - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH10', N'Lê Quang Huy', N'0915391312', N'Hoàn Kiếm - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH11', N'Nguyễn Văn Phú', N'0913602103', N'Ba Đình - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH12', N'Đào Văn Tuấn', N'0905372666', N'Đống Đa - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH13', N'Nguyễn Ngọc Thăng', N'0911375199', N'Long Biên - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH14', N'Phạm Thu Vân', N'0949522905', N'Cầu Giấy - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH15', N'Đào Thúy Lan', N'0949234388', N'Hoàn Kiếm - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH16', N'Nguyễn Anh Tuấn', N'0914500150', N'Ba Đình - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH17', N'Hà Hải My', N'0912222798', N'Hà Đông - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH18', N'Nguyễn Tiến Nam', N'0944747978', N'Hoàng Mai - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH19', N'Trần Văn Bằng', N'0914418539', N'Đông Anh - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH20', N'Hoàng Thu Hường', N'0979749536', N'Đống Đa - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH21', N'Nguyễn Minh Vũ', N'0913295947', N'Cầu Giấy - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH22', N'Hoàng Hoa Chinh', N'0975702604', N'Cầu Giấy - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH23', N'Phạm Cẩm Tú', N'0915843713', N'Ba Đình - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH24', N'Lê Thu Hằng', N'0915831004', N'Hai Bà Trưng - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH25', N'Vũ Thu Cúc', N'0945951146', N'Hoàn Kiếm - Hà Nội')
INSERT [dbo].[khachhang] ([makhach], [tenkhach], [dienthoai], [diachi]) VALUES (N'KH26', N'Ngô Huy Đức', N'(938) 497-4758', N'Tây Hồ - Hà Nội')
GO
INSERT [dbo].[loaisach] ([maloaisach], [tenloaisach]) VALUES (N'LS01', N'Sách giáo khoa')
INSERT [dbo].[loaisach] ([maloaisach], [tenloaisach]) VALUES (N'LS02', N'Cổ tích')
INSERT [dbo].[loaisach] ([maloaisach], [tenloaisach]) VALUES (N'LS03', N'Truyện tranh')
INSERT [dbo].[loaisach] ([maloaisach], [tenloaisach]) VALUES (N'LS04', N'Lãng mạn')
INSERT [dbo].[loaisach] ([maloaisach], [tenloaisach]) VALUES (N'LS05', N'Trinh thám')
INSERT [dbo].[loaisach] ([maloaisach], [tenloaisach]) VALUES (N'LS06', N'Kinh dị ')
INSERT [dbo].[loaisach] ([maloaisach], [tenloaisach]) VALUES (N'LS07', N'Khoa học viễn tưởng')
INSERT [dbo].[loaisach] ([maloaisach], [tenloaisach]) VALUES (N'LS08', N'Tiểu thuyết')
INSERT [dbo].[loaisach] ([maloaisach], [tenloaisach]) VALUES (N'LS09', N'Kỹ năng sống')
INSERT [dbo].[loaisach] ([maloaisach], [tenloaisach]) VALUES (N'LS10', N'Thơ')
GO
INSERT [dbo].[ncc] ([mancc], [tenncc], [diachi], [dienthoai]) VALUES (N'NCC01', N'Công ty cổ phần Sách giáo dục', N'Cầu Giấy - Hà Nội', N'02462534308')
INSERT [dbo].[ncc] ([mancc], [tenncc], [diachi], [dienthoai]) VALUES (N'NCC02', N'Công ty cổ phần Sách McBooks', N'Bắc Từ Liêm - Hà Nội', N'0986066630')
INSERT [dbo].[ncc] ([mancc], [tenncc], [diachi], [dienthoai]) VALUES (N'NCC03', N'Công ty THNN Văn hóa Việt Nam', N'Nam Từ Liêm - Hà Nội', N'02838452708')
INSERT [dbo].[ncc] ([mancc], [tenncc], [diachi], [dienthoai]) VALUES (N'NCC04', N'Nhà sách trực tuyến BOOKBUY.VN', N'Đống Đa - Hà Nội', N'(024) 625-3890')
INSERT [dbo].[ncc] ([mancc], [tenncc], [diachi], [dienthoai]) VALUES (N'NCC05', N'DaNaBooks', N'Hai Bà Trưng - Hà Nội', N'02469568308')
GO
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [dienthoai], [diachi], [macongviec]) VALUES (N'NV01', N'Đỗ Đức Việt', N'(083) 896-7802', N'Cầu Giấy - Hà Nội', N'CV01')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [dienthoai], [diachi], [macongviec]) VALUES (N'NV02', N'Phan Thanh Ngân', N'0909504768', N'Tây Hồ - Hà Nội', N'CV02')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [dienthoai], [diachi], [macongviec]) VALUES (N'NV03', N'Vũ Xuân Hiệp', N'0837267528', N'Đống Đa - Hà Nội', N'CV02')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [dienthoai], [diachi], [macongviec]) VALUES (N'NV04', N'Ngô Minh Hiếu', N'0938173132', N'Hai Bà Trưng - Hà Nội', N'CV02')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [dienthoai], [diachi], [macongviec]) VALUES (N'NV05', N'Nguyễn Thu Hằng', N'0909164516', N'Ba Đình - Hà Nội', N'CV02')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [dienthoai], [diachi], [macongviec]) VALUES (N'NV06', N'Lê Thủy Tiên', N'0937865727', N'Đống Đa - Hà Nội', N'CV03')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [dienthoai], [diachi], [macongviec]) VALUES (N'NV07', N'Trương Ngọc Nhi', N'0862748975', N'Hoàn Kiếm - Hà Nội', N'CV03')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [dienthoai], [diachi], [macongviec]) VALUES (N'NV08', N'Đỗ Minh Ngọc', N'0905287838', N'Thanh Xuân - Hà Nội', N'CV04')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [dienthoai], [diachi], [macongviec]) VALUES (N'NV09', N'Nguyễn Hồng Vân', N'0838966572', N'Ba Đình - Hà Nội', N'CV04')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [dienthoai], [diachi], [macongviec]) VALUES (N'NV10', N'Trần Kim Ngân', N'0837267047', N'Tây Hồ - Hà Nội', N'CV04')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [dienthoai], [diachi], [macongviec]) VALUES (N'NV11', N'Trần Lan Uyên', N'0938740299', N'Cầu Giấy - Hà Nội', N'CV05')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [dienthoai], [diachi], [macongviec]) VALUES (N'NV12', N'Lê Thanh Hà', N'0838963400', N'Đống Đa - Hà Nội', N'CV05')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [dienthoai], [diachi], [macongviec]) VALUES (N'NV13', N'Phan Thanh Thảo', N'0937240593', N'Hoàn Kiếm - Hà Nội', N'CV05')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [dienthoai], [diachi], [macongviec]) VALUES (N'NV14', N'Vũ Thảo Hiền', N'0932051616', N'Ba Đình - Hà Nội', N'CV05')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [dienthoai], [diachi], [macongviec]) VALUES (N'NV15', N'Nguyễn Mai Trang', N'0854032808', N'Hai Bà Trưng - Hà Nội', N'CV05')
GO
INSERT [dbo].[nxb] ([manxb], [tennxb], [diachi], [dienthoai]) VALUES (N'NXB01', N'NXB Kim Đồng', N'Hai Bà Trưng - Hà Nội', N'1900571595')
INSERT [dbo].[nxb] ([manxb], [tennxb], [diachi], [dienthoai]) VALUES (N'NXB02', N'NXB Trẻ', N'Hai Bà Trưng - Hà Nội', N'0243773454')
INSERT [dbo].[nxb] ([manxb], [tennxb], [diachi], [dienthoai]) VALUES (N'NXB03', N'NXB Văn học', N'Ba Đình - Hà Nội', N'0983128138')
INSERT [dbo].[nxb] ([manxb], [tennxb], [diachi], [dienthoai]) VALUES (N'NXB04', N'NXB Giáo dục Việt Nam', N'Hoàn Kiếm - Hà Nội', N'0238220801')
INSERT [dbo].[nxb] ([manxb], [tennxb], [diachi], [dienthoai]) VALUES (N'NXB05', N'NXB Hồng Đức', N'Hoàn Kiếm - Hà Nội', N'0243926024')
INSERT [dbo].[nxb] ([manxb], [tennxb], [diachi], [dienthoai]) VALUES (N'NXB06', N'NXB Tri thức', N'Đống Đa - Hà Nội', N'0765823499')
INSERT [dbo].[nxb] ([manxb], [tennxb], [diachi], [dienthoai]) VALUES (N'NXB07', N'NXB Thanh niên', N'Cầu Giấy - Hà Nội', N'0962345979')
INSERT [dbo].[nxb] ([manxb], [tennxb], [diachi], [dienthoai]) VALUES (N'NXB08', N'NXB Thế giới', N'Ba Đình - Hà Nội', N'0912367869')
INSERT [dbo].[nxb] ([manxb], [tennxb], [diachi], [dienthoai]) VALUES (N'NXB09', N'NXB Y học', N'Hoàn Kiếm - Hà Nội', N'0236145728')
INSERT [dbo].[nxb] ([manxb], [tennxb], [diachi], [dienthoai]) VALUES (N'NXB10', N'NXB Văn học cổ truyền', N'Đống Đa - Hà Nội', N'0723657839')
GO
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S01', N'Doraemon', 42, 23000, 25300, N'LS03', N'NXB01', N'D:\BTL_Nhóm 3\Pictures\Doraemon1.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S02', N'Tam Quốc Diễn Nghĩa', 79, 600000, 660000, N'LS08', N'NXB05', N'D:\BTL_Nhóm 3\Pictures\tam-quoc-dien-nghia.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S03', N'Thủy hử', 121, 500000, 550000, N'LS08', N'NXB05', N'D:\BTL_Nhóm 3\Pictures\Thủy_hử_(sách).jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S04', N'Ngữ văn lớp 6', 132, 15000, 16500, N'LS01', N'NXB04', N'D:\BTL_Nhóm 3\Pictures\sach-giao-khoa-ngu-van-lop-6.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S05', N'Không gia đình', 119, 320000, 352000, N'LS08', N'NXB08', N'D:\BTL_Nhóm 3\Pictures\khong-gia-dinh.png')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S06', N'How to train your dragon?', 54, 45000, 49500, N'LS08', N'NXB07', N'D:\BTL_Nhóm 3\Pictures\81pj4tb6LEL._AC_UF894,1000_QL80_.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S07', N'Sherlock Holmes', 45, 320000, 352000, N'LS05', N'NXB06', N'D:\BTL_Nhóm 3\Pictures\sherlock-holmes-toan-tap.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S08', N'Kỹ năng giao tiếp Nhật Bản', 60, 52000, 57200, N'LS09', N'NXB06', N'D:\BTL_Nhóm 3\Pictures\web813.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S09', N'Thơ và đời', 23, 65000, 71500, N'LS10', N'NXB10', N'D:\BTL_Nhóm 3\Pictures\2021_01_07_16_25_31_1-390x510.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S10', N'Tam Thể', 22, 700000, 770000, N'LS07', N'NXB03', N'D:\BTL_Nhóm 3\Pictures\review sach tam the - anh fb bui linh xuan.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S11', N'Tấm Cám', 35, 12000, 13200, N'LS02', N'NXB03', N'D:\BTL_Nhóm 3\Pictures\chuyen-co-tich-tam-cam.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S12', N'Chiếc gương thần kỳ', 42, 85000, 93500, N'LS04', N'NXB07', N'D:\BTL_Nhóm 3\Pictures\33869606.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S13', N'Những đứa trẻ to xác', 26, 420000, 462000, N'LS08', N'NXB09', N'D:\BTL_Nhóm 3\Pictures\ipgg55gu_660x946-nhungduatretoxac.png')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S14', N'Những ngôi nhà ma ám', 36, 100000, 110000, N'LS06', N'NXB08', N'D:\BTL_Nhóm 3\Pictures\2020_05_11_16_39_16_1-390x510.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S15', N'Conan', 24, 20000, 22000, N'LS03', N'NXB01', N'D:\BTL_Nhóm 3\Pictures\102_359d8e4410484914b3ccee5831926b14_master.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S16', N'Thiên thần nhà bên', 32, 95000, 104500, N'LS08', N'NXB01', N'D:\BTL_Nhóm 3\Pictures\images.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S17', N'Trạm xe buýt lãng mạn', 30, 75000, 82500, N'LS04', N'NXB02', N'D:\BTL_Nhóm 3\Pictures\0d04866ee58369d554597d78486db5fe.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S18', N'Tuyển tập thơ Trần Đăng Khoa', 27, 55000, 60500, N'LS10', N'NXB10', N'D:\BTL_Nhóm 3\Pictures\8935095623594_7fd085671a884339ba8736018f0a2039_9c0da81fa71f4b4b8ff253520d896e89.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S19', N'The Woman In Me', 42, 42000, 46200, N'LS08', N'NXB08', N'D:\BTL_Nhóm 3\Pictures\61BWsc9eGbL._AC_UF1000,1000_QL80_.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S20', N'Cuộc phiêu lưu của Sinbad', 29, 210000, 231000, N'LS08', N'NXB09', N'D:\BTL_Nhóm 3\Pictures\Bia_DVD_Sinbad.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S21', N'Giáo trình tiếng Nhật cơ bản', 12, 105000, 115500, N'LS01', N'NXB04', N'D:\BTL_Nhóm 3\Pictures\images (1).jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S22', N'Giáo trình Y học cổ truyền', 50, 60000, 66000, N'LS01', N'NXB09', N'D:\BTL_Nhóm 3\Pictures\b4eccbb96fb048af81d859a94457e70f.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S23', N'Cổ tích Việt Nam', 25, 41000, 45100, N'LS02', N'NXB10', N'D:\BTL_Nhóm 3\Pictures\co-tich-viet-nam-bang-tho-bia-mem.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S24', N'Forest Gump', 56, 230000, 253000, N'LS08', N'NXB06', N'D:\BTL_Nhóm 3\Pictures\unnamed.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S25', N'Dracula', 47, 56000, 61600, N'LS06', N'NXB08', N'D:\BTL_Nhóm 3\Pictures\unnamed (1).jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S26', N'451 độ F', 19, 125000, 137500, N'LS08', N'NXB05', N'D:\BTL_Nhóm 3\Pictures\2021_05_11_16_51_55_1-390x510.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S27', N'Date A Live', 41, 78000, 85800, N'LS03', N'NXB01', N'D:\BTL_Nhóm 3\Pictures\Date_A_Live_Volume_1.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S28', N'Nhật ký công chúa ngủ trong rừng', 38, 59000, 64900, N'LS04', N'NXB03', N'D:\BTL_Nhóm 3\Pictures\ebook-nhat-ky-cong-chua-prc-pdf-epub.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S29', N'Mật mã Da Vinci', 55, 95000, 104500, N'LS05', N'NXB04', N'D:\BTL_Nhóm 3\Pictures\Mật_mã_davinci.jpg')
INSERT [dbo].[sach] ([masach], [tensach], [soluong], [gianhap], [giaban], [maloaisach], [manxb], [anh]) VALUES (N'S30', N'Kỹ năng soạn thảo văn bản', 33, 110000, 121000, N'LS09', N'NXB06', N'D:\BTL_Nhóm 3\Pictures\z3647236664120_fb70fab7438b92c330836bae6c16463d.jpg')
GO
ALTER TABLE [dbo].[chitiethdb]  WITH CHECK ADD  CONSTRAINT [FK_chitiethdb_hdb] FOREIGN KEY([sohdb])
REFERENCES [dbo].[hdb] ([sohdb])
GO
ALTER TABLE [dbo].[chitiethdb] CHECK CONSTRAINT [FK_chitiethdb_hdb]
GO
ALTER TABLE [dbo].[chitiethdb]  WITH CHECK ADD  CONSTRAINT [FK_chitiethdb_sach] FOREIGN KEY([masach])
REFERENCES [dbo].[sach] ([masach])
GO
ALTER TABLE [dbo].[chitiethdb] CHECK CONSTRAINT [FK_chitiethdb_sach]
GO
ALTER TABLE [dbo].[chitiethdn]  WITH CHECK ADD  CONSTRAINT [FK_chitiethdn_hdn] FOREIGN KEY([sohdn])
REFERENCES [dbo].[hdn] ([sohdn])
GO
ALTER TABLE [dbo].[chitiethdn] CHECK CONSTRAINT [FK_chitiethdn_hdn]
GO
ALTER TABLE [dbo].[chitiethdn]  WITH CHECK ADD  CONSTRAINT [FK_chitiethdn_sach] FOREIGN KEY([masach])
REFERENCES [dbo].[sach] ([masach])
GO
ALTER TABLE [dbo].[chitiethdn] CHECK CONSTRAINT [FK_chitiethdn_sach]
GO
ALTER TABLE [dbo].[hdb]  WITH CHECK ADD  CONSTRAINT [FK_hdb_khachhang] FOREIGN KEY([makhach])
REFERENCES [dbo].[khachhang] ([makhach])
GO
ALTER TABLE [dbo].[hdb] CHECK CONSTRAINT [FK_hdb_khachhang]
GO
ALTER TABLE [dbo].[hdb]  WITH CHECK ADD  CONSTRAINT [FK_hdb_nhanvien] FOREIGN KEY([manhanvien])
REFERENCES [dbo].[nhanvien] ([manhanvien])
GO
ALTER TABLE [dbo].[hdb] CHECK CONSTRAINT [FK_hdb_nhanvien]
GO
ALTER TABLE [dbo].[hdn]  WITH CHECK ADD  CONSTRAINT [FK_hdn_ncc] FOREIGN KEY([mancc])
REFERENCES [dbo].[ncc] ([mancc])
GO
ALTER TABLE [dbo].[hdn] CHECK CONSTRAINT [FK_hdn_ncc]
GO
ALTER TABLE [dbo].[hdn]  WITH CHECK ADD  CONSTRAINT [FK_hdn_nhanvien] FOREIGN KEY([manhanvien])
REFERENCES [dbo].[nhanvien] ([manhanvien])
GO
ALTER TABLE [dbo].[hdn] CHECK CONSTRAINT [FK_hdn_nhanvien]
GO
ALTER TABLE [dbo].[nhanvien]  WITH CHECK ADD  CONSTRAINT [FK_nhanvien_congviec] FOREIGN KEY([macongviec])
REFERENCES [dbo].[congviec] ([macongviec])
GO
ALTER TABLE [dbo].[nhanvien] CHECK CONSTRAINT [FK_nhanvien_congviec]
GO
ALTER TABLE [dbo].[sach]  WITH CHECK ADD  CONSTRAINT [FK_sach_loaisach] FOREIGN KEY([maloaisach])
REFERENCES [dbo].[loaisach] ([maloaisach])
GO
ALTER TABLE [dbo].[sach] CHECK CONSTRAINT [FK_sach_loaisach]
GO
ALTER TABLE [dbo].[sach]  WITH CHECK ADD  CONSTRAINT [FK_sach_nxb] FOREIGN KEY([manxb])
REFERENCES [dbo].[nxb] ([manxb])
GO
ALTER TABLE [dbo].[sach] CHECK CONSTRAINT [FK_sach_nxb]
GO
USE [master]
GO
ALTER DATABASE [CHBS] SET  READ_WRITE 
GO
