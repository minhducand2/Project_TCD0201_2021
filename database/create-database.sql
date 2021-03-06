CREATE DATABASE [web_ban_hang]
GO

USE [web_ban_hang];
GO

 
/****** Object:  Table [dbo].[p000account]    Script Date: 11/07/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p000account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdRole] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[phone] [nvarchar](15) NULL,
	[address] [nvarchar](100) NULL,
	[password] [nvarchar](255) NOT NULL,
	[img] [nvarchar](255) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[role] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1000shopcomment]    Script Date: 11/06/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1000shopcomment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdShop] [int] NULL,
	[IdUser] [int] NULL,
	[IdCommentStatus] [int] NULL,
	[Content] [nvarchar](500) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[IdTypeComment] [int] NULL,
	[IdStaff] [int] NULL,
 CONSTRAINT [PK__p1000sho__3213E83F614E7968] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p100menu]    Script Date: 11/06/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p100menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdParentMenu] [int] NULL,
	[IsGroup] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Slug] [nvarchar](50) NULL,
	[Icon] [nvarchar](50) NULL,
	[Position] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1100shopcategories]    Script Date: 11/06/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1100shopcategories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Thumbnail] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1200mealplantype]    Script Date: 11/07/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1200mealplantype](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1300blogcategories]    Script Date: 11/07/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1300blogcategories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1400blog]    Script Date: 11/07/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1400blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdBlogCategories] [int] NULL,
	[Title] [nvarchar](100) NULL,
	[Thumbnail] [nvarchar](150) NULL,
	[Description] [nvarchar](150) NULL,
	[Content] [text] NULL,
	[NumberView] [int] NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1500contactinfo]    Script Date: 11/06/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1500contactinfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](150) NULL,
	[Phone] [nvarchar](15) NULL,
	[Mail] [nvarchar](30) NULL,
	[Working] [nvarchar](200) NULL,
	[Facebook] [nvarchar](100) NULL,
	[Instagram] [nvarchar](100) NULL,
	[Youtube] [nvarchar](100) NULL,
	[Twitter] [nvarchar](100) NULL,
	[Map] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1600contactstatus]    Script Date: 11/06/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1600contactstatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1700contactus]    Script Date: 11/06/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1700contactus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdContactStatus] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Email] [nvarchar](30) NULL,
	[Message] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1800userstatus]    Script Date: 11/06/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1800userstatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p1900roleuser]    Script Date: 11/06/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p1900roleuser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2000user]    Script Date: 11/06/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2000user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdUserStatus] [int] NULL,
	[Fullname] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[Avatar] [text] NULL,
	[IdRoleUser] [int] NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
	[authkey] [nvarchar](max) NULL,
	[Phone] [nvarchar](15) NULL,
	[Sex] [nvarchar](10) NULL,
	[IdCity] [nvarchar](10) NULL,
	[IdDistrict] [nvarchar](10) NULL,
	[Address] [nvarchar](250) NULL,
	[Point] [int] NULL,
 CONSTRAINT [PK__p2000use__3213E83FCC8F841F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p200role]    Script Date: 11/06/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p200role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2100promotion]    Script Date: 11/06/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2100promotion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[PromotionCode] [nvarchar](30) NULL,
	[PercentCode] [float] NULL,
	[MoneyDiscount] [float] NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[Point] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2200orderstatus]    Script Date: 11/06/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2200orderstatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2300paymentstatus]    Script Date: 11/06/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2300paymentstatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2400paymenttype]    Script Date: 11/06/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2400paymenttype](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2500city]    Script Date: 11/06/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2500city](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2600district]    Script Date: 11/06/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2600district](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdCity] [int] NULL,
	[Name] [nvarchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2700producttype]    Script Date: 11/06/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2700producttype](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2800ordershop]    Script Date: 11/06/2021 03:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2800ordershop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdProductType] [int] NULL,
	[IdUser] [int] NULL,
	[IdOrderStatus] [int] NULL,
	[IdCity] [int] NULL,
	[IdDistrict] [int] NULL,
	[IdPaymentStatus] [int] NULL,
	[IdPaymentType] [int] NULL,
	[TotalPrice] [real] NULL,
	[PromotionCode] [nvarchar](50) NULL,
	[Name] [nvarchar](30) NULL,
	[Email] [nvarchar](30) NULL,
	[Phone] [nvarchar](15) NULL,
	[Address] [nvarchar](150) NULL,
	[Note] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
	[Point] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p2900orderdetail]    Script Date: 11/06/2021 11:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p2900orderdetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdOrderShop] [int] NULL,
	[IdShop] [int] NULL,
	[Amount] [int] NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
	[Star] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p3000commentstatus]    Script Date: 11/06/2021 11:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p3000commentstatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p300roledetail]    Script Date: 11/06/2021 11:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p300roledetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdRole] [int] NULL,
	[IdMenu] [int] NULL,
	[Status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p3100mypromotion]    Script Date: 11/06/2021 11:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p3100mypromotion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdPromotion] [int] NULL,
	[CreatedAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p3200inputproduct]    Script Date: 11/06/2021 11:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p3200inputproduct](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdShop] [int] NULL,
	[Note] [nvarchar](150) NULL,
	[ExpiryDate] [date] NULL,
	[CreatedAt] [datetime] NOT NULL,
	[Amount] [int] NULL,
	[IdCity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p3300warehouse]    Script Date: 11/06/2021 11:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p3300warehouse](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdShop] [int] NULL,
	[Amount] [int] NULL,
	[ExpiryDate] [date] NULL,
	[IdCity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p400banner]    Script Date: 11/06/2021 11:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p400banner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](200) NULL,
	[Position] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p500footer]    Script Date: 11/06/2021 11:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p500footer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Content1] [nvarchar](max) NULL,
	[Content2] [nvarchar](max) NULL,
	[Content3] [nvarchar](max) NULL,
	[AndroidLink] [nvarchar](100) NULL,
	[IosLink] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p600headerinfo]    Script Date: 11/06/2021 11:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p600headerinfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [nvarchar](15) NULL,
	[Mail] [nvarchar](30) NULL,
	[Logo] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p700shop]    Script Date: 11/06/2021 11:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p700shop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Thumbnail] [nvarchar](150) NULL,
	[Description] [text] NULL,
	[PriceOrigin] [real] NULL,
	[PriceCurrent] [real] NULL,
	[Star] [real] NULL,
	[Images] [nvarchar](150) NULL,
	[Video] [nvarchar](150) NULL,
	[IdShopCategories] [int] NULL,
	[PricePromotion] [real] NULL,
	[Point] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p800shopcombo]    Script Date: 11/06/2021 11:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p800shopcombo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Usd] [float] NULL,
	[Ship] [int] NULL,
 CONSTRAINT [PK__p800shop__3213E83F5F88CAB2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[p900shopcombodetail]    Script Date: 11/06/2021 11:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[p900shopcombodetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IdShopCombo] [int] NULL,
	[IdShop] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[p000account] ON 

INSERT [dbo].[p000account] ([id], [IdRole], [name], [email], [phone], [address], [password], [img], [created_date], [role]) VALUES (1, 1, N'Administrator', N'admin@gmail.com', N'0966250693', N'183 Qu??ch Th? Trang', N'5f4dcc3b5aa765d61d8327deb882cf99', N'http://35.226.232.199:8000/images\2021_04_28_10_03_04_3 vi.jpg', CAST(N'2021-04-28T10:08:36.000' AS DateTime), N'a:3,b:3,c:3,d:3,e:3,f:3,g:3,h:3,i:3,j:3,k:3,l:3,m:3,n:3,o:3,p:3,q:3,r:3,s:3,t:3,u:3,v:3,w:3,x:3,y:3,z:3,{:3,|:3,}:3,~:3,:3')
SET IDENTITY_INSERT [dbo].[p000account] OFF
GO
SET IDENTITY_INSERT [dbo].[p1000shopcomment] ON 

INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (1, 1, 1, 1, N'<p>m?i t?o</p>
', CAST(N'2021-04-20T14:22:29.000' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (3, 2, 1, 1, N'<p>L?n 2</p>
', CAST(N'2021-04-20T14:22:55.000' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (4, 2, 0, 1, N'<p>L?n 3</p>
', CAST(N'2021-04-20T14:23:08.000' AS DateTime), 3, 1)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (5, 2, 1, 1, N'<p>test th?</p>
', CAST(N'2021-04-20T14:23:24.000' AS DateTime), 3, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (6, 1, 1, 1, N'<p>bbbb</p>
', CAST(N'2021-04-20T14:24:22.000' AS DateTime), 1, 1)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (7, 1, 1, 1, N'<p>23424</p>
', CAST(N'2021-04-20T09:35:27.000' AS DateTime), 1, 1)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (8, 1, 17, 1, N'B??nh lu?n', CAST(N'2021-05-05T14:00:09.503' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (9, 1, 17, 1, N'B??nh lu?n222', CAST(N'2021-05-05T14:02:31.637' AS DateTime), 8, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (10, 1, 17, 1, N'dang b??i', CAST(N'2021-05-05T14:04:27.280' AS DateTime), 1, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (11, 1, 17, 1, N'B?n ph?i nh?p n?i dung b??nh lu?n', CAST(N'2021-05-05T14:04:40.857' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (12, 1, 17, 1, N'bbbb b??nh lu?n
', CAST(N'2021-05-05T14:05:36.073' AS DateTime), 8, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (13, 1, 17, 1, N'b??nh lu?n', CAST(N'2021-05-05T14:05:54.697' AS DateTime), 11, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (14, 7, 17, 1, N'bbbb', CAST(N'2021-05-05T14:07:14.860' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (15, 7, 17, 1, N'aaaa', CAST(N'2021-05-05T14:07:18.657' AS DateTime), 14, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (16, 1, 17, 1, N'bcbcvb', CAST(N'2021-05-05T14:08:22.023' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (17, 1, 17, 1, N'??dasd', CAST(N'2021-05-05T14:08:36.623' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (18, 1, 17, 1, N'6666', CAST(N'2021-05-05T14:08:53.730' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (19, 8, 17, 1, N'bbbb', CAST(N'2021-05-05T14:10:41.383' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (20, 7, 17, 1, N'bbbb', CAST(N'2021-05-05T14:10:49.477' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (21, 2, 17, 1, N'234234', CAST(N'2021-05-06T15:00:22.547' AS DateTime), 3, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (22, 2, 17, 1, N'234234', CAST(N'2021-05-06T15:00:26.417' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (23, 1, 0, 1, N'<p>bb</p>
', CAST(N'2021-05-05T16:10:22.000' AS DateTime), 8, 1)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (24, 2, 0, 1, N'<p>bbb</p>
', CAST(N'2021-05-06T20:49:07.000' AS DateTime), 22, 1)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (25, 6, 17, 1, N'43545', CAST(N'2021-05-11T08:42:55.590' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (26, 1, 17, 1, N'b??nh lu?n', CAST(N'2021-05-11T08:56:54.860' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (27, 1, 17, 1, N'b??nh lu?n', CAST(N'2021-05-11T08:57:50.223' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (28, 3, 17, 1, N'b??nh lu?n', CAST(N'2021-05-11T09:01:55.443' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (29, 3, 17, 1, N'b??nh lu?n', CAST(N'2021-05-11T09:02:13.833' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (30, 9, 17, 1, N'b??nh lu?n', CAST(N'2021-05-11T09:07:19.747' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (31, 9, 17, 1, N'<p>b&igrave;nh lu?n n&egrave;</p>
', CAST(N'2021-05-11T14:43:39.000' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (32, 9, 17, 1, N'<p>b&igrave;nh lu?n</p>
', CAST(N'2021-05-11T14:42:03.000' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (33, 8, 17, 1, N'b??nh lu?n', CAST(N'2021-05-11T14:14:43.343' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (34, 8, 17, 1, N'test b??nh lu?n h??m nay', CAST(N'2021-05-11T14:15:24.043' AS DateTime), 0, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (35, 8, 17, 1, N'test b??nh lu?n h??m nay', CAST(N'2021-05-11T14:15:27.850' AS DateTime), 34, 0)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (36, 6, 0, 1, N'<p>bbbb</p>
', CAST(N'2021-05-11T17:09:23.000' AS DateTime), 25, 1)
INSERT [dbo].[p1000shopcomment] ([id], [IdShop], [IdUser], [IdCommentStatus], [Content], [CreatedAt], [IdTypeComment], [IdStaff]) VALUES (37, 3, 17, 1, N'b??nh lu?n', CAST(N'2021-06-08T19:33:09.573' AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[p1000shopcomment] OFF
GO
SET IDENTITY_INSERT [dbo].[p100menu] ON 

INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (1, 0, 0, N'DashBoard', N'/manager/home', N'fas fa-chart-line', 1)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (2, 0, 1, N'Manage Permission', N'', N'fas fa-book-spells', 2)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (3, 2, 0, N'Menu', N'/manager/c2-menu', N'fas fa-bars', 3)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (4, 2, 0, N'Department', N'/manager/c3-role', N'fas fa-building', 4)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (5, 2, 0, N'Account', N'/manager/c1-account', N'fas fa-user-circle', 5)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (6, 41, 0, N'Banner', N'/manager/c5-Banner', N'far fa-image', 6)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (7, 41, 0, N'Footer', N'/manager/c6-Footer', N'fas fa-atlas', 7)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (8, 41, 0, N'HeaderInfo', N'/manager/c7-HeaderInfo', N'fas fa-globe-americas', 8)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (9, 36, 0, N'Product', N'/manager/c8-Shop', N'fas fa-shopping-bag', 9)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (10, 36, 0, N'ShopSetting', N'/manager/c9-ShopCombo', N'fas fa-gifts', 10)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (11, 36, 2, N'ShopComboDetail', N'/manager/c10-ShopComboDetail', N'fas fa-cart-plus', 11)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (12, 43, 0, N'ShopComment', N'/manager/c11-ShopComment', N'fas fa-comment-dollar', 12)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (13, 36, 0, N'ShopCategories', N'/manager/c12-ShopCategories', N'far fa-address-card', 13)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (14, 36, 2, N'MealPlanType', N'/manager/c13-MealPlanType', N'fas fa-gem', 14)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (15, 40, 0, N'BlogCategories', N'/manager/c14-BlogCategories', N'fab fa-blogger', 15)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (16, 40, 0, N'Blog', N'/manager/c15-Blog', N'fas fa-rss-square', 16)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (17, 41, 0, N'ContactInfo', N'/manager/c16-ContactInfo', N'far fa-address-card', 17)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (18, 39, 0, N'ContactStatus', N'/manager/c17-ContactStatus', N'fas fa-id-card-alt', 18)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (19, 39, 0, N'ContactUs', N'/manager/c18-ContactUs', N'far fa-id-card', 19)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (20, 38, 0, N'UserStatus', N'/manager/c19-UserStatus', N'fas fa-id-card-alt', 20)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (21, 38, 0, N'RoleUser', N'/manager/c20-RoleUser', N'far fa-id-card', 21)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (22, 38, 0, N'User', N'/manager/c21-User', N'fas fa-users', 22)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (23, 36, 0, N'Promotion', N'/manager/c22-Promotion', N'fas fa-ad', 23)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (24, 37, 0, N'OrderStatus', N'/manager/c23-OrderStatus', N'fas fa-star', 24)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (25, 37, 0, N' PaymentStatus', N'/manager/c24-PaymentStatus', N'fab fa-amazon-pay', 25)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (26, 37, 0, N'PaymentType', N'/manager/c25-PaymentType', N'fab fa-paypal', 26)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (27, 42, 0, N'City', N'/manager/c26-City', N'fas fa-city', 27)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (28, 42, 0, N'District', N'/manager/c27-District', N'fas fa-university', 28)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (29, 36, 0, N'ProductType', N'/manager/c28-ProductType', N'fas fa-coins', 29)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (30, 37, 0, N'OrderShop', N'/manager/c29-OrderShop', N'fas fa-shopping-basket', 30)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (31, 37, 2, N'OrderDetail', N'/manager/c30-OrderDetail', N'fas fa-shopping-bag', 31)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (32, 43, 0, N'CommentStatus', N'/manager/c31-CommentStatus', N'far fa-comment-alt', 32)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (33, 38, 2, N'MyPromotion', N'/manager/c32-MyPromotion', N'fas fa-gem', 33)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (34, 42, 0, N'InputProduct', N'/manager/c33-InputProduct', N'fas fa-file-import', 34)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (35, 42, 0, N'Warehouse', N'/manager/c34-Warehouse', N'fas fa-warehouse', 35)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (36, 0, 1, N'Manage Shop', N'', N'fas fa-store-alt', 2)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (37, 0, 1, N'Manage Order', N'', N'fas fa-file-invoice-dollar', 3)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (38, 0, 1, N'User', N'', N'fas fa-users', 4)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (39, 0, 1, N'User Contact', N'', N'fas fa-id-card', 5)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (40, 0, 2, N'Manage News', N'', N'fas fa-newspaper', 6)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (41, 0, 1, N'Setting Homepage', N'', N'fas fa-sliders-h', 7)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (42, 0, 1, N'Manage WareHouse', N'', N'fas fa-warehouse', 8)
INSERT [dbo].[p100menu] ([id], [IdParentMenu], [IsGroup], [Name], [Slug], [Icon], [Position]) VALUES (43, 0, 1, N'Manage Comment', N'', N'fas fa-comments', 9)
SET IDENTITY_INSERT [dbo].[p100menu] OFF
GO
SET IDENTITY_INSERT [dbo].[p1100shopcategories] ON 

INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (1, N'M??y ?nh', N'http://35.226.232.199:8000/images\2021_04_28_09_47_21_camera.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (2, N'Laptop', N'http://35.226.232.199:8000/images\2021_04_28_09_47_28_maytinh.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (3, N'???ng h?', N'http://35.226.232.199:8000/images\2021_04_29_08_57_42_dongho.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (4, N'??? gia d?ng', N'http://35.226.232.199:8000/images\2021_04_29_08_58_00_dogiadung.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (5, N'Gi??y d??p', N'http://35.226.232.199:8000/images\2021_04_29_08_58_07_giay.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (6, N'??? n?', N'http://35.226.232.199:8000/images\2021_04_29_08_58_17_giaynu.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (7, N'M? v?? b??', N'http://35.226.232.199:8000/images\2021_04_29_08_58_34_me_be.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (8, N'??? b?p', N'http://35.226.232.199:8000/images\2021_04_29_08_59_00_nhacua.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (9, N'T??i x??ch', N'http://35.226.232.199:8000/images\2021_04_29_09_00_02_tuivinu.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (10, N'Thi?t b? di?n t?', N'http://35.226.232.199:8000/images\2021_04_29_09_00_17_tbdt.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (11, N'??o n?', N'http://35.226.232.199:8000/images\2021_04_29_09_00_30_thoitrangnu.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (12, N'??o nam', N'http://35.226.232.199:8000/images\2021_04_29_09_00_39_thoitrangnam.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (13, N'??i?n tho?i', N'http://35.226.232.199:8000/images\2021_04_29_09_01_04_phone.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (14, N'Tai nghe', N'http://35.226.232.199:8000/images\2021_04_29_09_01_51_oktt.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (15, N'Xe', N'http://35.226.232.199:8000/images\2021_04_29_09_02_05_oto.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (16, N'Th? thao', N'http://35.226.232.199:8000/images\2021_04_29_09_02_21_thethao.png')
INSERT [dbo].[p1100shopcategories] ([id], [Name], [Thumbnail]) VALUES (17, N's?n ph?m test', N'http://35.226.232.199:8000/images\2021_05_17_16_51_31_Chup-hinh-san-pham-Root-03.jpg')
SET IDENTITY_INSERT [dbo].[p1100shopcategories] OFF
GO
SET IDENTITY_INSERT [dbo].[p1300blogcategories] ON 

INSERT [dbo].[p1300blogcategories] ([id], [Name]) VALUES (1, N'Tin t?c')
INSERT [dbo].[p1300blogcategories] ([id], [Name]) VALUES (2, N'???i s?ng')
SET IDENTITY_INSERT [dbo].[p1300blogcategories] OFF
GO
SET IDENTITY_INSERT [dbo].[p1400blog] ON 

INSERT [dbo].[p1400blog] ([id], [IdBlogCategories], [Title], [Thumbnail], [Description], [Content], [NumberView], [CreatedAt], [UpdatedAt]) VALUES (1, 1, N'bbbbb', N'http://35.226.232.199:8000/images\2021_04_28_09_32_24_item-menu.jpg', N'??dasd', N'<p>cvbcvb</p>

<p>\n</p>
', 10, CAST(N'2021-04-02T09:32:26.000' AS DateTime), CAST(N'2021-04-10T09:32:26.000' AS DateTime))
INSERT [dbo].[p1400blog] ([id], [IdBlogCategories], [Title], [Thumbnail], [Description], [Content], [NumberView], [CreatedAt], [UpdatedAt]) VALUES (2, 2, N'nnnn', N'http://35.226.232.199:8000/images\2021_04_28_09_32_31_3 vi.jpg', N'sdfsd', N'<p>345345</p>

<p>\n</p>
', 6, CAST(N'2021-04-01T09:32:32.000' AS DateTime), CAST(N'2021-04-01T09:32:32.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[p1400blog] OFF
GO
SET IDENTITY_INSERT [dbo].[p1500contactinfo] ON 

INSERT [dbo].[p1500contactinfo] ([id], [Address], [Phone], [Mail], [Working], [Facebook], [Instagram], [Youtube], [Twitter], [Map]) VALUES (1, N'183 Qu??ch Th? Trang1111', N'0966250693', N'luongthanhbinh45@gmail.com', N'8:00 AM - 10:00 PM', N'https://www.facebook.com/izisoftwaredanang/', N'https://www.facebook.com/izisoftwaredanang/', N'https://www.facebook.com/izisoftwaredanang/', N'https://www.facebook.com/izisoftwaredanang/', N'<p><iframe height="450" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3835.1687642996817!2d108.22204811514789!3d16.004727888920772!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31421a104a344fa9%3A0x3214d6e27e11473e!2zMTgzIFF1w6FjaCBUaOG7iyBUcmFuZywgSG_DoCBYdcOibiwgQ-G6qW0gTOG7hywgxJDDoCBO4bq1bmcgNTUwMDAwLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1619661390011!5m2!1svi!2s" style="border:0;" width="600"></iframe></p>
')
SET IDENTITY_INSERT [dbo].[p1500contactinfo] OFF
GO
SET IDENTITY_INSERT [dbo].[p1600contactstatus] ON 

INSERT [dbo].[p1600contactstatus] ([id], [Name]) VALUES (1, N'M?i g?i')
SET IDENTITY_INSERT [dbo].[p1600contactstatus] OFF
GO
SET IDENTITY_INSERT [dbo].[p1700contactus] ON 

INSERT [dbo].[p1700contactus] ([id], [IdContactStatus], [Name], [Email], [Message]) VALUES (1, NULL, N'luongadsas', N'luongthanhbinh45@gmail.com', N'??dasd')
INSERT [dbo].[p1700contactus] ([id], [IdContactStatus], [Name], [Email], [Message]) VALUES (2, NULL, N'luongadsas', N'luongthanhbinh45@gmail.com', N'??dasd')
INSERT [dbo].[p1700contactus] ([id], [IdContactStatus], [Name], [Email], [Message]) VALUES (3, 1, N'3453234', N'luongthanhbinh45@gmail.com', N'23423')
INSERT [dbo].[p1700contactus] ([id], [IdContactStatus], [Name], [Email], [Message]) VALUES (4, 1, N'Luong Thanh B??nh', N'luongthanhbinh45@gmail.com', N'54656')
INSERT [dbo].[p1700contactus] ([id], [IdContactStatus], [Name], [Email], [Message]) VALUES (5, 1, N'rolie', N'test@gmail.com', N'bbb')
SET IDENTITY_INSERT [dbo].[p1700contactus] OFF
GO
SET IDENTITY_INSERT [dbo].[p1800userstatus] ON 

INSERT [dbo].[p1800userstatus] ([id], [Name]) VALUES (1, N'M?i dang k??')
SET IDENTITY_INSERT [dbo].[p1800userstatus] OFF
GO
SET IDENTITY_INSERT [dbo].[p1900roleuser] ON 

INSERT [dbo].[p1900roleuser] ([id], [Name]) VALUES (1, N'Kh??ch h??ng')
INSERT [dbo].[p1900roleuser] ([id], [Name]) VALUES (2, N'Kh??ch Vip')
SET IDENTITY_INSERT [dbo].[p1900roleuser] OFF
GO
SET IDENTITY_INSERT [dbo].[p2000user] ON 

INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (1, 1, N'Luong Thanh B??nh', N'luongthanhbinh451@gmail.com', N'020F80EC82D9A9EB21B53468F3F97E39', N'http://35.226.232.199:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-03-30T13:56:47.000' AS DateTime), CAST(N'2021-05-10T13:56:47.000' AS DateTime), N'', N'456456456', N'1', N'1', N'1', N'56456', 1000)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (17, 1, N'Luong Thanh B??nh', N'luongthanhbinh45@gmail.com', N'6A50CE6F7C366CB17C71FB6EA5CC3D1D', N'http://35.226.232.199:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-05-04T13:56:54.000' AS DateTime), CAST(N'2021-05-11T13:56:54.000' AS DateTime), N'luongthanhbinh45@gmail.com', N'0966150693', N'1', N'1', N'1', N'56456', 70)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (18, 1, N'Luong Thanh B??nh', N'luongthanhbinh345345@gmail.com', N'B379B04B1FB4E5AB34E0C3ABCE88757D', N'http://35.226.232.199:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-05-04T19:49:37.000' AS DateTime), CAST(N'2021-05-04T19:49:37.000' AS DateTime), N'', N'456456456', N'1', N'1', N'1', N'56456', 10)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (19, 1, N'Luong Thanh B??nh', N'luongthanhbinh451@gmail.com', N'FCEA920F7412B5DA7BE0CF42B8C93759', N'http://35.226.232.199:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-05-04T15:22:17.600' AS DateTime), CAST(N'2021-05-04T15:22:17.600' AS DateTime), N'', N'456456456', N'1', N'1', N'1', N'56456', NULL)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (20, 1, N'Luong Thanh B??nh', N'luongthanhbinh451@gmail.com', N'', N'http://35.226.232.199:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-05-04T15:56:32.577' AS DateTime), CAST(N'2021-05-04T15:56:32.577' AS DateTime), N'19k4111007@hce.edu.vn', N'456456456', N'1', N'1', N'1', N'56456', NULL)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (21, 1, N'Luong Thanh B??nh', N'luongthanhbinh451@gmail.com', N'FCEA920F7412B5DA7BE0CF42B8C93759', N'http://35.226.232.199:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-05-06T13:36:51.867' AS DateTime), CAST(N'2021-05-06T13:36:51.867' AS DateTime), N'', N'456456456', N'1', N'1', N'1', N'56456', NULL)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (22, 1, N'Luong Thanh B??nh', N'luongthanhbinh451@gmail.com', N'FCEA920F7412B5DA7BE0CF42B8C93759', N'http://35.226.232.199:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-05-06T13:42:02.530' AS DateTime), CAST(N'2021-05-06T13:42:02.530' AS DateTime), N'', N'456456456', N'1', N'1', N'1', N'56456', NULL)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (23, 1, N'Luong Thanh B??nh', N'luongthanhbinh451@gmail.com', N'FCEA920F7412B5DA7BE0CF42B8C93759', N'http://35.226.232.199:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-05-06T13:43:43.407' AS DateTime), CAST(N'2021-05-06T13:43:43.407' AS DateTime), N'', N'456456456', N'1', N'1', N'1', N'56456', NULL)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (24, 1, N'Luong Thanh B??nh', N'luongthanhbinh451@gmail.com', N'B389B2B1251E0D8BAF3C1219C14BBD56', N'http://35.226.232.199:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-05-06T13:56:41.000' AS DateTime), CAST(N'2021-05-06T13:56:41.000' AS DateTime), N'', N'456456456', N'1', N'1', N'1', N'56456', 1000)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (25, 1, N'Luong Thanh B??nh', N'luongthanhbinh451@gmail.com', N'FCEA920F7412B5DA7BE0CF42B8C93759', N'http://35.226.232.199:8000/images\2021_04_28_09_28_00_mt.jpg', 1, CAST(N'2021-05-07T09:22:37.430' AS DateTime), CAST(N'2021-05-07T09:22:37.430' AS DateTime), N'', N'456456456', N'1', N'1', N'1', N'56456', NULL)
INSERT [dbo].[p2000user] ([id], [IdUserStatus], [Fullname], [Email], [Password], [Avatar], [IdRoleUser], [CreatedAt], [UpdatedAt], [authkey], [Phone], [Sex], [IdCity], [IdDistrict], [Address], [Point]) VALUES (26, 1, N'bbbbb', N'6456456@gmail.com', N'72816E4D3C7168B39CCC277912208E37', N'http://35.226.232.199:8000/images\2021_05_10_19_45_24_favicon.ico', 1, CAST(N'2021-05-10T19:45:36.000' AS DateTime), CAST(N'2021-05-10T19:45:36.000' AS DateTime), NULL, N'+84966150693', N'1', N'1', N'1', N'K123/H20 C?? Ch??nh Lan', NULL)
SET IDENTITY_INSERT [dbo].[p2000user] OFF
GO
SET IDENTITY_INSERT [dbo].[p200role] ON 

INSERT [dbo].[p200role] ([id], [Name]) VALUES (1, N'ADMIN')
INSERT [dbo].[p200role] ([id], [Name]) VALUES (22, N'Cham s??c kh??ch h??ng')
SET IDENTITY_INSERT [dbo].[p200role] OFF
GO
SET IDENTITY_INSERT [dbo].[p2100promotion] ON 

INSERT [dbo].[p2100promotion] ([id], [Name], [PromotionCode], [PercentCode], [MoneyDiscount], [StartDate], [EndDate], [Point]) VALUES (1, N'Khuy?n m??i 30-4', N'G50', 0, 300000, CAST(N'2021-04-29' AS Date), CAST(N'2021-05-04' AS Date), 5)
INSERT [dbo].[p2100promotion] ([id], [Name], [PromotionCode], [PercentCode], [MoneyDiscount], [StartDate], [EndDate], [Point]) VALUES (20, N'Khuy?n m??i', N'G30', 30, 0, CAST(N'2021-04-30' AS Date), CAST(N'2021-06-30' AS Date), 5)
SET IDENTITY_INSERT [dbo].[p2100promotion] OFF
GO
SET IDENTITY_INSERT [dbo].[p2200orderstatus] ON 

INSERT [dbo].[p2200orderstatus] ([id], [Name]) VALUES (1, N'M?i d?t h??ng')
INSERT [dbo].[p2200orderstatus] ([id], [Name]) VALUES (2, N'??ang x? l??')
INSERT [dbo].[p2200orderstatus] ([id], [Name]) VALUES (3, N'??ang giao h??ng')
INSERT [dbo].[p2200orderstatus] ([id], [Name]) VALUES (4, N'???? nh?n h??ng')
INSERT [dbo].[p2200orderstatus] ([id], [Name]) VALUES (5, N'???? hu?')
SET IDENTITY_INSERT [dbo].[p2200orderstatus] OFF
GO
SET IDENTITY_INSERT [dbo].[p2300paymentstatus] ON 

INSERT [dbo].[p2300paymentstatus] ([id], [Name]) VALUES (1, N'Chua thanh to??n')
INSERT [dbo].[p2300paymentstatus] ([id], [Name]) VALUES (2, N'???? thanh to??n')
SET IDENTITY_INSERT [dbo].[p2300paymentstatus] OFF
GO
SET IDENTITY_INSERT [dbo].[p2400paymenttype] ON 

INSERT [dbo].[p2400paymenttype] ([id], [Name]) VALUES (1, N'Ti?n m?t')
INSERT [dbo].[p2400paymenttype] ([id], [Name]) VALUES (2, N'Chuy?n kho?n')
INSERT [dbo].[p2400paymenttype] ([id], [Name]) VALUES (3, N'Paypal')
SET IDENTITY_INSERT [dbo].[p2400paymenttype] OFF
GO
SET IDENTITY_INSERT [dbo].[p2500city] ON 

INSERT [dbo].[p2500city] ([id], [Name]) VALUES (1, N'H?? N?i')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (2, N'H?? Giang')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (4, N'Cao B?ng')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (6, N'B?c K?n')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (8, N'Tuy??n Quang')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (10, N'L??o Cai')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (11, N'??i?n Bi??n')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (12, N'Lai Ch??u')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (14, N'Son La')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (15, N'Y??n B??i')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (17, N'Ho?? B??nh')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (19, N'Th??i Nguy??n')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (20, N'L?ng Son')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (22, N'Qu?ng Ninh')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (24, N'B?c Giang')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (25, N'Ph?? Th?')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (26, N'Vinh Ph??c')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (27, N'B?c Ninh')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (30, N'H?i Duong')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (31, N'H?i Ph??ng')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (33, N'Hung Y??n')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (34, N'Th??i B??nh')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (35, N'H?? Nam')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (36, N'Nam ???nh')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (37, N'Ninh B??nh')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (38, N'Thanh H??a')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (40, N'Ngh? An')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (42, N'H?? Tinh')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (44, N'Qu?ng B??nh')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (45, N'Qu?ng Tr?')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (46, N'Hu?')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (48, N'???? N?ng')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (49, N'Qu?ng Nam')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (51, N'Qu?ng Ng??i')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (52, N'B??nh ???nh')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (54, N'Ph?? Y??n')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (56, N'Kh??nh H??a')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (58, N'Ninh Thu?n')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (60, N'B??nh Thu?n')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (62, N'Kon Tum')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (64, N'Gia Lai')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (66, N'???k L?k')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (67, N'???k N??ng')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (68, N'L??m ???ng')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (70, N'B??nh Phu?c')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (72, N'T??y Ninh')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (74, N'B??nh Duong')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (75, N'???ng Nai')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (77, N'B?? R?a - Vung T??u')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (79, N'H? Ch?? Minh')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (80, N'Long An')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (82, N'Ti?n Giang')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (83, N'B?n Tre')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (84, N'Tr?? Vinh')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (86, N'Vinh Long')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (87, N'???ng Th??p')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (89, N'An Giang')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (91, N'Ki??n Giang')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (92, N'C?n Tho')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (93, N'H?u Giang')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (94, N'S??c Trang')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (95, N'B?c Li??u')
INSERT [dbo].[p2500city] ([id], [Name]) VALUES (96, N'C?? Mau')
SET IDENTITY_INSERT [dbo].[p2500city] OFF
GO
SET IDENTITY_INSERT [dbo].[p2600district] ON 

INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (1, 1, N'Ba ????nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (2, 1, N'Ho??n Ki?m')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (3, 1, N'T??y H?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (4, 1, N'Long Bi??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (5, 1, N'C?u Gi?y')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (6, 1, N'???ng ??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (7, 1, N'Hai B?? Trung')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (8, 1, N'Ho??ng Mai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (9, 1, N'Thanh Xu??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (16, 1, N'S??c Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (17, 1, N'????ng Anh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (18, 1, N'Gia L??m')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (19, 1, N'Nam T? Li??m')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (20, 1, N'Thanh Tr??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (21, 1, N'B?c T? Li??m')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (24, 2, N'Th??nh ph? H?? Giang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (26, 2, N'???ng Van')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (27, 2, N'M??o V?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (28, 2, N'Y??n Minh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (29, 2, N'Qu?n B?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (30, 2, N'V? Xuy??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (31, 2, N'B?c M??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (32, 2, N'Ho??ng Su Ph??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (33, 2, N'X??n M?n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (34, 2, N'B?c Quang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (35, 2, N'Quang B??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (40, 4, N'Th??nh ph? Cao B?ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (42, 4, N'B?o L??m')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (43, 4, N'B?o L?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (44, 4, N'Th??ng N??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (45, 4, N'H?? Qu?ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (46, 4, N'Tr?? Linh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (47, 4, N'Tr??ng Kh??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (48, 4, N'H? Lang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (49, 4, N'Qu?ng Uy??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (50, 4, N'Ph?c Ho??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (51, 4, N'Ho?? An')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (52, 4, N'Nguy??n B??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (53, 4, N'Th?ch An')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (58, 6, N'Th??nh Ph? B?c K?n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (60, 6, N'P??c N?m')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (61, 6, N'Ba B?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (62, 6, N'Ng??n Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (63, 6, N'B?ch Th??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (64, 6, N'Ch? ???n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (65, 6, N'Ch? M?i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (66, 6, N'Na R??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (70, 8, N'Th??nh ph? Tuy??n Quang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (71, 8, N'L??m B??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (72, 8, N'N?? Hang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (73, 8, N'Chi??m H??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (74, 8, N'H??m Y??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (75, 8, N'Y??n Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (76, 8, N'Son Duong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (80, 10, N'Th??nh ph? L??o Cai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (82, 10, N'B??t X??t')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (83, 10, N'Mu?ng Khuong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (84, 10, N'Si Ma Cai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (85, 10, N'B?c H??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (86, 10, N'B?o Th?ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (87, 10, N'B?o Y??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (88, 10, N'Sa Pa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (89, 10, N'Van B??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (94, 11, N'Th??nh ph? ??i?n Bi??n Ph?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (95, 11, N'Th? X?? Mu?ng Lay')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (96, 11, N'Mu?ng Nh??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (97, 11, N'Mu?ng Ch??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (98, 11, N'T?a Ch??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (99, 11, N'Tu?n Gi??o')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (100, 11, N'??i?n Bi??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (101, 11, N'??i?n Bi??n ????ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (102, 11, N'Mu?ng ?ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (103, 11, N'N?m P?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (105, 12, N'Th??nh ph? Lai Ch??u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (106, 12, N'Tam ??u?ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (107, 12, N'Mu?ng T??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (108, 12, N'S??n H?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (109, 12, N'Phong Th?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (110, 12, N'Than Uy??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (111, 12, N'T??n Uy??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (112, 12, N'N?m Nh??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (116, 14, N'Th??nh ph? Son La')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (118, 14, N'Qu?nh Nhai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (119, 14, N'Thu?n Ch??u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (120, 14, N'Mu?ng La')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (121, 14, N'B?c Y??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (122, 14, N'Ph?? Y??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (123, 14, N'M?c Ch??u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (124, 14, N'Y??n Ch??u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (125, 14, N'Mai Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (126, 14, N'S??ng M??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (127, 14, N'S?p C?p')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (128, 14, N'V??n H?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (132, 15, N'Th??nh ph? Y??n B??i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (133, 15, N'Th? x?? Nghia L?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (135, 15, N'L?c Y??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (136, 15, N'Van Y??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (137, 15, N'M?? Cang Ch?i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (138, 15, N'Tr?n Y??n')
GO
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (139, 15, N'Tr?m T?u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (140, 15, N'Van Ch?n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (141, 15, N'Y??n B??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (148, 17, N'Th??nh ph? H??a B??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (150, 17, N'???? B?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (151, 17, N'K? Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (152, 17, N'Luong Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (153, 17, N'Kim B??i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (154, 17, N'Cao Phong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (155, 17, N'T??n L?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (156, 17, N'Mai Ch??u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (157, 17, N'L?c Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (158, 17, N'Y??n Th?y')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (159, 17, N'L?c Th?y')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (164, 19, N'Th??nh ph? Th??i Nguy??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (165, 19, N'Th??nh ph? S??ng C??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (167, 19, N'???nh H??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (168, 19, N'Ph?? Luong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (169, 19, N'???ng H?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (170, 19, N'V?? Nhai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (171, 19, N'???i T?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (172, 19, N'Th? x?? Ph? Y??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (173, 19, N'Ph?? B??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (178, 20, N'Th??nh ph? L?ng Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (180, 20, N'Tr??ng ???nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (181, 20, N'B??nh Gia')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (182, 20, N'Van L??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (183, 20, N'Cao L?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (184, 20, N'Van Quan')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (185, 20, N'B?c Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (186, 20, N'H?u Lung')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (187, 20, N'Chi Lang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (188, 20, N'L?c B??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (189, 20, N'????nh L?p')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (193, 22, N'Th??nh ph? H? Long')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (194, 22, N'Th??nh ph? M??ng C??i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (195, 22, N'Th??nh ph? C?m Ph?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (196, 22, N'Th??nh ph? U??ng B??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (198, 22, N'B??nh Li??u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (199, 22, N'Ti??n Y??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (200, 22, N'???m H??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (201, 22, N'H?i H??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (202, 22, N'Ba Ch?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (203, 22, N'V??n ???n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (204, 22, N'Ho??nh B?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (205, 22, N'Th? x?? ????ng Tri?u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (206, 22, N'Th? x?? Qu?ng Y??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (207, 22, N'C?? T??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (213, 24, N'Th??nh ph? B?c Giang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (215, 24, N'Y??n Th?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (216, 24, N'T??n Y??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (217, 24, N'L?ng Giang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (218, 24, N'L?c Nam')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (219, 24, N'L?c Ng?n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (220, 24, N'Son ???ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (221, 24, N'Y??n Dung')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (222, 24, N'Vi?t Y??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (223, 24, N'Hi?p H??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (227, 25, N'Th??nh ph? Vi?t Tr??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (228, 25, N'Th? x?? Ph?? Th?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (230, 25, N'??oan H??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (231, 25, N'H? Ho??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (232, 25, N'Thanh Ba')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (233, 25, N'Ph?? Ninh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (234, 25, N'Y??n L?p')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (235, 25, N'C?m Kh??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (236, 25, N'Tam N??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (237, 25, N'L??m Thao')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (238, 25, N'Thanh Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (239, 25, N'Thanh Thu?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (240, 25, N'T??n Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (243, 26, N'Th??nh ph? Vinh Y??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (244, 26, N'Th? x?? Ph??c Y??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (246, 26, N'L?p Th?ch')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (247, 26, N'Tam Duong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (248, 26, N'Tam ???o')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (249, 26, N'B??nh Xuy??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (250, 1, N'NM?? Linh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (251, 26, N'Y??n L?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (252, 26, N'Vinh Tu?ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (253, 26, N'S??ng L??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (256, 27, N'Th??nh ph? B?c Ninh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (258, 27, N'Y??n Phong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (259, 27, N'Qu? V??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (260, 27, N'Ti??n Du')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (261, 27, N'Th? x?? T? Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (262, 27, N'Thu?n Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (263, 27, N'Gia B??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (264, 27, N'Luong T??i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (268, 1, N'NH?? ????ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (269, 1, N'NTh? x?? Son T??y')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (271, 1, N'NBa V??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (272, 1, N'NPh??c Th?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (273, 1, N'N??an Phu?ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (274, 1, N'NHo??i ???c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (275, 1, N'NQu?c Oai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (276, 1, N'NTh?ch Th?t')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (277, 1, N'NChuong M?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (278, 1, N'NThanh Oai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (279, 1, N'NThu?ng T??n')
GO
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (280, 1, N'NPh?? Xuy??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (281, 1, N'N?ng H??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (282, 1, N'NM? ???c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (288, 30, N'Th??nh ph? H?i Duong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (290, 30, N'Th? x?? Ch?? Linh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (291, 30, N'Nam S??ch')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (292, 30, N'Kinh M??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (293, 30, N'Kim Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (294, 30, N'Thanh H??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (295, 30, N'C?m Gi??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (296, 30, N'B??nh Giang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (297, 30, N'Gia L?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (298, 30, N'T? K?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (299, 30, N'Ninh Giang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (300, 30, N'Thanh Mi?n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (303, 31, N'H?ng B??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (304, 31, N'Ng?? Quy?n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (305, 31, N'L?? Ch??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (306, 31, N'H?i An')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (307, 31, N'Ki?n An')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (308, 31, N'??? Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (309, 31, N'Duong Kinh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (311, 31, N'Thu? Nguy??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (312, 31, N'An Duong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (313, 31, N'An L??o')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (314, 31, N'Ki?n Thu?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (315, 31, N'Ti??n L??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (316, 31, N'Vinh B?o')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (317, 31, N'C??t H?i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (318, 31, N'B?ch Long Vi')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (323, 33, N'Th??nh ph? Hung Y??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (325, 33, N'Van L??m')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (326, 33, N'Van Giang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (327, 33, N'Y??n M?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (328, 33, N'M? H??o')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (329, 33, N'??n Thi')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (330, 33, N'Kho??i Ch??u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (331, 33, N'Kim ???ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (332, 33, N'Ti??n L?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (333, 33, N'Ph?? C?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (336, 34, N'Th??nh ph? Th??i B??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (338, 34, N'Qu?nh Ph?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (339, 34, N'Hung H??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (340, 34, N'????ng Hung')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (341, 34, N'Th??i Th?y')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (342, 34, N'Ti?n H?i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (343, 34, N'Ki?n Xuong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (344, 34, N'Vu Thu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (347, 35, N'Th??nh ph? Ph? L??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (349, 35, N'Duy Ti??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (350, 35, N'Kim B?ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (351, 35, N'Thanh Li??m')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (352, 35, N'B??nh L?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (353, 35, N'L?? Nh??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (356, 36, N'Th??nh ph? Nam ???nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (358, 36, N'M? L?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (359, 36, N'V? B?n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (360, 36, N'?? Y??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (361, 36, N'Nghia Hung')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (362, 36, N'Nam Tr?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (363, 36, N'Tr?c Ninh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (364, 36, N'Xu??n Tru?ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (365, 36, N'Giao Th?y')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (366, 36, N'H?i H?u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (369, 37, N'Th??nh ph? Ninh B??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (370, 37, N'Th??nh ph? Tam ??i?p')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (372, 37, N'Nho Quan')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (373, 37, N'Gia Vi?n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (374, 37, N'Hoa Lu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (375, 37, N'Y??n Kh??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (376, 37, N'Kim Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (377, 37, N'Y??n M??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (380, 38, N'Th??nh ph? Thanh H??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (381, 38, N'Th? x?? B?m Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (382, 38, N'Th? x?? S?m Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (384, 38, N'Mu?ng L??t')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (385, 38, N'Quan H??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (386, 38, N'B?? Thu?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (387, 38, N'Quan Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (388, 38, N'Lang Ch??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (389, 38, N'Ng?c L?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (390, 38, N'C?m Th?y')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (391, 38, N'Th?ch Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (392, 38, N'H?? Trung')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (393, 38, N'Vinh L?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (394, 38, N'Y??n ???nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (395, 38, N'Th? Xu??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (396, 38, N'Thu?ng Xu??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (397, 38, N'Tri?u Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (398, 38, N'Thi?u H??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (399, 38, N'Ho?ng H??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (400, 38, N'H?u L?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (401, 38, N'Nga Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (402, 38, N'Nhu Xu??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (403, 38, N'Nhu Thanh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (404, 38, N'N??ng C?ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (405, 38, N'????ng Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (406, 38, N'Qu?ng Xuong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (407, 38, N'Tinh Gia')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (412, 40, N'Th??nh ph? Vinh')
GO
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (413, 40, N'Th? x?? C?a L??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (414, 40, N'Th? x?? Th??i Ho??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (415, 40, N'Qu? Phong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (416, 40, N'Qu? Ch??u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (417, 40, N'K? Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (418, 40, N'Tuong Duong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (419, 40, N'Nghia ????n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (420, 40, N'Qu? H?p')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (421, 40, N'Qu?nh Luu')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (422, 40, N'Con Cu??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (423, 40, N'T??n K?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (424, 40, N'Anh Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (425, 40, N'Di?n Ch??u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (426, 40, N'Y??n Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (427, 40, N'???? Luong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (428, 40, N'Thanh Chuong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (429, 40, N'Nghi L?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (430, 40, N'Nam ????n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (431, 40, N'Hung Nguy??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (432, 40, N'Th? x?? Ho??ng Mai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (436, 42, N'Th??nh ph? H?? Tinh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (437, 42, N'Th? x?? H?ng Linh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (439, 42, N'Huong Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (440, 42, N'???c Th?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (441, 42, N'Vu Quang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (442, 42, N'Nghi Xu??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (443, 42, N'Can L?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (444, 42, N'Huong Kh??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (445, 42, N'Th?ch H??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (446, 42, N'C?m Xuy??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (447, 42, N'K? Anh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (448, 42, N'L?c H??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (449, 42, N'Th? x?? K? Anh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (450, 44, N'Th??nh Ph? ???ng H?i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (452, 44, N'Minh H??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (453, 44, N'Tuy??n H??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (454, 44, N'Qu?ng Tr?ch')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (455, 44, N'B? Tr?ch')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (456, 44, N'Qu?ng Ninh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (457, 44, N'L? Th?y')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (458, 44, N'Th? x?? Ba ???n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (461, 45, N'Th??nh ph? ????ng H??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (462, 45, N'Th? x?? Qu?ng Tr?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (464, 45, N'Vinh Linh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (465, 45, N'Hu?ng H??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (466, 45, N'Gio Linh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (467, 45, N'??a Kr??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (468, 45, N'Cam L?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (469, 45, N'Tri?u Phong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (470, 45, N'H?i Lang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (471, 45, N'C?n C?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (474, 46, N'Th??nh ph? Hu?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (476, 46, N'Phong ??i?n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (477, 46, N'Qu?ng ??i?n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (478, 46, N'Ph?? Vang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (479, 46, N'Th? x?? Huong Th?y')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (480, 46, N'Th? x?? Huong Tr??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (481, 46, N'A Lu?i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (482, 46, N'Ph?? L?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (483, 46, N'Nam ????ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (490, 48, N'Li??n Chi?u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (491, 48, N'Thanh Kh??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (492, 48, N'H?i Ch??u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (493, 48, N'Son Tr??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (494, 48, N'Ngu H??nh Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (495, 48, N'C?m L?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (497, 48, N'H??a Vang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (498, 48, N'Ho??ng Sa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (502, 49, N'Th??nh ph? Tam K?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (503, 49, N'Th??nh ph? H?i An')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (504, 49, N'T??y Giang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (505, 49, N'????ng Giang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (506, 49, N'???i L?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (507, 49, N'Th? x?? ??i?n B??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (508, 49, N'Duy Xuy??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (509, 49, N'Qu? Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (510, 49, N'Nam Giang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (511, 49, N'Phu?c Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (512, 49, N'Hi?p ???c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (513, 49, N'Thang B??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (514, 49, N'Ti??n Phu?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (515, 49, N'B?c Tr?? My')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (516, 49, N'Nam Tr?? My')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (517, 49, N'N??i Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (518, 49, N'Ph?? Ninh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (519, 49, N'N??ng Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (522, 51, N'Th??nh ph? Qu?ng Ng??i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (524, 51, N'B??nh Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (525, 51, N'Tr?? B?ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (526, 51, N'T??y Tr??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (527, 51, N'Son T?nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (528, 51, N'Tu Nghia')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (529, 51, N'Son H??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (530, 51, N'Son T??y')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (531, 51, N'Minh Long')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (532, 51, N'Nghia H??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (533, 51, N'M? ???c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (534, 51, N'???c Ph?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (535, 51, N'Ba To')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (536, 51, N'L?? Son')
GO
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (540, 52, N'Th??nh ph? Qui Nhon')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (542, 52, N'An L??o')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (543, 52, N'Ho??i Nhon')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (544, 52, N'Ho??i ??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (545, 52, N'Ph?? M?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (546, 52, N'Vinh Th?nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (547, 52, N'T??y Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (548, 52, N'Ph?? C??t')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (549, 52, N'Th? x?? An Nhon')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (550, 52, N'Tuy Phu?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (551, 52, N'V??n Canh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (555, 54, N'Th??nh ph? Tuy Ho??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (557, 54, N'Th? x?? S??ng C?u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (558, 54, N'???ng Xu??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (559, 54, N'Tuy An')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (560, 54, N'Son H??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (561, 54, N'S??ng Hinh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (562, 54, N'T??y Ho??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (563, 54, N'Ph?? Ho??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (564, 54, N'????ng H??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (568, 56, N'Th??nh ph? Nha Trang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (569, 56, N'Th??nh ph? Cam Ranh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (570, 56, N'Cam L??m')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (571, 56, N'V?n Ninh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (572, 56, N'Th? x?? Ninh H??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (573, 56, N'Kh??nh Vinh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (574, 56, N'Di??n Kh??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (575, 56, N'Kh??nh Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (576, 56, N'Tru?ng Sa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (582, 58, N'Th??nh ph? Phan Rang-Th??p Ch??m')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (584, 58, N'B??c ??i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (585, 58, N'Ninh Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (586, 58, N'Ninh H?i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (587, 58, N'Ninh Phu?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (588, 58, N'Thu?n B?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (589, 58, N'Thu?n Nam')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (593, 60, N'Th??nh ph? Phan Thi?t')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (594, 60, N'Th? x?? La Gi')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (595, 60, N'Tuy Phong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (596, 60, N'B?c B??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (597, 60, N'H??m Thu?n B?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (598, 60, N'H??m Thu?n Nam')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (599, 60, N'T??nh Linh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (600, 60, N'???c Linh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (601, 60, N'H??m T??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (602, 60, N'Ph?? Qu??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (608, 62, N'Th??nh ph? Kon Tum')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (610, 62, N'???k Glei')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (611, 62, N'Ng?c H?i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (612, 62, N'???k T??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (613, 62, N'Kon Pl??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (614, 62, N'Kon R?y')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (615, 62, N'???k H??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (616, 62, N'Sa Th?y')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (617, 62, N'Tu Mo R??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (618, 62, N'Ia H Drai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (622, 64, N'Th??nh ph? Pleiku')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (623, 64, N'Th? x?? An Kh??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (624, 64, N'Th? x?? Ayun Pa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (625, 64, N'KBang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (626, 64, N'??ak ??oa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (627, 64, N'Chu Pah')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (628, 64, N'Ia Grai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (629, 64, N'Mang Yang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (630, 64, N'K??ng Chro')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (631, 64, N'???c Co')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (632, 64, N'Chu Pr??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (633, 64, N'Chu S??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (634, 64, N'??ak Po')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (635, 64, N'Ia Pa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (637, 64, N'Kr??ng Pa')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (638, 64, N'Ph?? Thi?n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (639, 64, N'Chu Puh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (643, 66, N'Th??nh ph? Bu??n Ma Thu?t')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (644, 66, N'Th? X?? Bu??n H?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (645, 66, N'Ea Hleo')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (646, 66, N'Ea S??p')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (647, 66, N'Bu??n ????n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (648, 66, N'Cu Mgar')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (649, 66, N'Kr??ng B??k')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (650, 66, N'Kr??ng Nang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (651, 66, N'Ea Kar')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (652, 66, N'M??r?k')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (653, 66, N'Kr??ng B??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (654, 66, N'Kr??ng P?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (655, 66, N'Kr??ng A Na')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (656, 66, N'L?k')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (657, 66, N'Cu Kuin')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (660, 67, N'Th? x?? Gia Nghia')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (661, 67, N'??ak Glong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (662, 67, N'Cu J??t')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (663, 67, N'???k Mil')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (664, 67, N'Kr??ng N??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (665, 67, N'???k Song')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (666, 67, N'???k RL?p')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (667, 67, N'Tuy ???c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (672, 68, N'Th??nh ph? ???? L?t')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (673, 68, N'Th??nh ph? B?o L?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (674, 68, N'??am R??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (675, 68, N'L?c Duong')
GO
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (676, 68, N'L??m H??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (677, 68, N'??on Duong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (678, 68, N'???c Tr?ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (679, 68, N'Di Linh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (680, 68, N'B?o L??m')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (681, 68, N'??? Huoai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (682, 68, N'??? T?h')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (683, 68, N'C??t Ti??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (688, 70, N'Th? x?? Phu?c Long')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (689, 70, N'Th? x?? ???ng Xo??i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (690, 70, N'Th? x?? B??nh Long')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (691, 70, N'B?? Gia M?p')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (692, 70, N'L?c Ninh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (693, 70, N'B?? ???p')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (694, 70, N'H?n Qu?n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (695, 70, N'???ng Ph??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (696, 70, N'B?? ??ang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (697, 70, N'Chon Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (698, 70, N'Ph?? Ri?ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (703, 72, N'Th??nh ph? T??y Ninh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (705, 72, N'T??n Bi??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (706, 72, N'T??n Ch??u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (707, 72, N'Duong Minh Ch??u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (708, 72, N'Ch??u Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (709, 72, N'H??a Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (710, 72, N'G?? D?u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (711, 72, N'B?n C?u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (712, 72, N'Tr?ng B??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (718, 74, N'Th??nh ph? Th? D?u M?t')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (719, 74, N'B??u B??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (720, 74, N'D?u Ti?ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (721, 74, N'Th? x?? B?n C??t')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (722, 74, N'Ph?? Gi??o')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (723, 74, N'Th? x?? T??n Uy??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (724, 74, N'Th? x?? Di An')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (725, 74, N'Th? x?? Thu?n An')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (726, 74, N'B?c T??n Uy??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (731, 75, N'Th??nh ph? Bi??n H??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (732, 75, N'Th? x?? Long Kh??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (734, 75, N'T??n Ph??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (735, 75, N'Vinh C?u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (736, 75, N'???nh Qu??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (737, 75, N'Tr?ng Bom')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (738, 75, N'Th?ng Nh?t')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (739, 75, N'C?m M?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (740, 75, N'Long Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (741, 75, N'Xu??n L?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (742, 75, N'Nhon Tr?ch')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (747, 77, N'Th??nh ph? Vung T??u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (748, 77, N'Th??nh ph? B?? R?a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (750, 77, N'Ch??u ???c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (751, 77, N'Xuy??n M?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (752, 77, N'Long ??i?n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (753, 77, N'???t ???')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (754, 77, N'T??n Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (755, 77, N'C??n ???o')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (762, 79, N'Th? ???c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (764, 79, N'G?? V?p')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (765, 79, N'B??nh Th?nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (766, 79, N'T??n B??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (767, 79, N'T??n Ph??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (768, 79, N'Ph?? Nhu?n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (777, 79, N'B??nh T??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (783, 79, N'C? Chi')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (784, 79, N'H??c M??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (785, 79, N'B??nh Ch??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (786, 79, N'Nh?? B??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (787, 79, N'C?n Gi?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (794, 80, N'Th??nh ph? T??n An')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (795, 80, N'Th? x?? Ki?n Tu?ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (796, 80, N'T??n Hung')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (797, 80, N'Vinh Hung')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (798, 80, N'M?c H??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (799, 80, N'T??n Th?nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (800, 80, N'Th?nh H??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (801, 80, N'???c Hu?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (802, 80, N'???c H??a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (803, 80, N'B?n L?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (804, 80, N'Th? Th?a')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (805, 80, N'T??n Tr?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (806, 80, N'C?n ??u?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (807, 80, N'C?n Giu?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (808, 80, N'Ch??u Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (815, 82, N'Th??nh ph? M? Tho')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (816, 82, N'Th? x?? G?? C??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (817, 82, N'Th? x?? Cai L?y')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (818, 82, N'T??n Phu?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (819, 82, N'C??i B??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (820, 82, N'Cai L?y')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (821, 82, N'Ch??u Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (822, 82, N'Ch? G?o')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (823, 82, N'G?? C??ng T??y')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (824, 82, N'G?? C??ng ????ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (825, 82, N'T??n Ph?? ????ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (829, 83, N'Th??nh ph? B?n Tre')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (831, 83, N'Ch??u Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (832, 83, N'Ch? L??ch')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (833, 83, N'M? C??y Nam')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (834, 83, N'Gi?ng Tr??m')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (835, 83, N'B??nh ???i')
GO
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (836, 83, N'Ba Tri')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (837, 83, N'Th?nh Ph??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (838, 83, N'M? C??y B?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (842, 84, N'Th??nh ph? Tr?? Vinh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (844, 84, N'C??ng Long')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (845, 84, N'C?u K??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (846, 84, N'Ti?u C?n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (847, 84, N'Ch??u Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (848, 84, N'C?u Ngang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (849, 84, N'Tr?? C??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (850, 84, N'Duy??n H?i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (851, 84, N'Th? x?? Duy??n H?i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (855, 86, N'Th??nh ph? Vinh Long')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (857, 86, N'Long H?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (858, 86, N'Mang Th??t')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (859, 86, N'Vung Li??m')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (860, 86, N'Tam B??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (861, 86, N'Th? x?? B??nh Minh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (862, 86, N'Tr?? ??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (863, 86, N'B??nh T??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (866, 87, N'Th??nh ph? Cao L??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (867, 87, N'Th??nh ph? Sa ????c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (868, 87, N'Th? x?? H?ng Ng?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (869, 87, N'T??n H?ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (870, 87, N'H?ng Ng?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (871, 87, N'Tam N??ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (872, 87, N'Th??p Mu?i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (873, 87, N'Cao L??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (874, 87, N'Thanh B??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (875, 87, N'L?p V??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (876, 87, N'Lai Vung')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (877, 87, N'Ch??u Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (883, 89, N'Th??nh ph? Long Xuy??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (884, 89, N'Th??nh ph? Ch??u ???c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (886, 89, N'An Ph??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (887, 89, N'Th? x?? T??n Ch??u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (888, 89, N'Ph?? T??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (889, 89, N'Ch??u Ph??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (890, 89, N'T?nh Bi??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (891, 89, N'Tri T??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (892, 89, N'Ch??u Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (893, 89, N'Ch? M?i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (894, 89, N'Tho?i Son')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (899, 91, N'Th??nh ph? R?ch Gi??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (900, 91, N'Th? x?? H?? Ti??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (902, 91, N'Ki??n Luong')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (903, 91, N'H??n ???t')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (904, 91, N'T??n Hi?p')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (905, 91, N'Ch??u Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (906, 91, N'Gi?ng Ri?ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (907, 91, N'G?? Quao')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (908, 91, N'An Bi??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (909, 91, N'An Minh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (910, 91, N'Vinh Thu?n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (911, 91, N'Ph?? Qu?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (912, 91, N'Ki??n H?i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (913, 91, N'U Minh Thu?ng')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (914, 91, N'Giang Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (916, 92, N'Ninh Ki?u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (917, 92, N'?? M??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (918, 92, N'B??nh Thu?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (919, 92, N'C??i Rang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (923, 92, N'Th?t N?t')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (924, 92, N'Vinh Th?nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (925, 92, N'C? ???')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (926, 92, N'Phong ??i?n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (927, 92, N'Th?i Lai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (930, 93, N'Th??nh ph? V? Thanh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (931, 93, N'Th? x?? Ng?? B?y')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (932, 93, N'Ch??u Th??nh A')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (933, 93, N'Ch??u Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (934, 93, N'Ph?ng Hi?p')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (935, 93, N'V? Thu?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (936, 93, N'Long M?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (937, 93, N'Th? x?? Long M?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (941, 94, N'Th??nh ph? S??c Trang')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (942, 94, N'Ch??u Th??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (943, 94, N'K? S??ch')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (944, 94, N'M? T??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (945, 94, N'C?? Lao Dung')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (946, 94, N'Long Ph??')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (947, 94, N'M? Xuy??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (948, 94, N'Th? x?? Ng?? Nam')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (949, 94, N'Th?nh Tr?')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (950, 94, N'Th? x?? Vinh Ch??u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (951, 94, N'Tr?n ???')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (954, 95, N'Th??nh ph? B?c Li??u')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (956, 95, N'H?ng D??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (957, 95, N'Phu?c Long')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (958, 95, N'Vinh L?i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (959, 95, N'Th? x?? Gi?? Rai')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (960, 95, N'????ng H?i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (961, 95, N'Ho?? B??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (964, 96, N'Th??nh ph? C?? Mau')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (966, 96, N'U Minh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (967, 96, N'Th?i B??nh')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (968, 96, N'Tr?n Van Th?i')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (969, 96, N'C??i Nu?c')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (970, 96, N'???m Doi')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (971, 96, N'Nam Can')
GO
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (972, 96, N'Ph?? T??n')
INSERT [dbo].[p2600district] ([id], [IdCity], [Name]) VALUES (973, 96, N'Ng?c Hi?n')
SET IDENTITY_INSERT [dbo].[p2600district] OFF
GO
SET IDENTITY_INSERT [dbo].[p2700producttype] ON 

INSERT [dbo].[p2700producttype] ([id], [Name]) VALUES (1, N'S?n ph?m m?i')
SET IDENTITY_INSERT [dbo].[p2700producttype] OFF
GO
SET IDENTITY_INSERT [dbo].[p2800ordershop] ON 

INSERT [dbo].[p2800ordershop] ([id], [IdProductType], [IdUser], [IdOrderStatus], [IdCity], [IdDistrict], [IdPaymentStatus], [IdPaymentType], [TotalPrice], [PromotionCode], [Name], [Email], [Phone], [Address], [Note], [CreatedAt], [UpdatedAt], [Point]) VALUES (1, 1, 17, 4, 1, 1, 1, 1, 825000, N'', N'Luong Thanh B??nh', N'luongthanhbinh45@gmail.com', N'0966150693', N'56456', N'', CAST(N'2021-06-11T11:33:32.000' AS DateTime), CAST(N'2021-06-11T11:33:32.000' AS DateTime), 0)
INSERT [dbo].[p2800ordershop] ([id], [IdProductType], [IdUser], [IdOrderStatus], [IdCity], [IdDistrict], [IdPaymentStatus], [IdPaymentType], [TotalPrice], [PromotionCode], [Name], [Email], [Phone], [Address], [Note], [CreatedAt], [UpdatedAt], [Point]) VALUES (2, 1, 17, 5, 1, 1, 1, 1, 525000, N'', N'Luong Thanh B??nh', N'luongthanhbinh45@gmail.com', N'0966150693', N'56456', N'', CAST(N'2021-06-11T11:29:45.000' AS DateTime), CAST(N'2021-06-11T11:29:45.000' AS DateTime), 0)
INSERT [dbo].[p2800ordershop] ([id], [IdProductType], [IdUser], [IdOrderStatus], [IdCity], [IdDistrict], [IdPaymentStatus], [IdPaymentType], [TotalPrice], [PromotionCode], [Name], [Email], [Phone], [Address], [Note], [CreatedAt], [UpdatedAt], [Point]) VALUES (3, 1, 17, 5, 62, 1, 1, 1, 85000, N'', N'Luong Thanh B??nh', N'luongthanhbinh45@gmail.com', N'0966150693', N'56456', N'', CAST(N'2021-06-11T11:35:57.000' AS DateTime), CAST(N'2021-06-11T11:35:57.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[p2800ordershop] OFF
GO
SET IDENTITY_INSERT [dbo].[p2900orderdetail] ON 

INSERT [dbo].[p2900orderdetail] ([id], [IdOrderShop], [IdShop], [Amount], [CreatedAt], [UpdatedAt], [Star]) VALUES (1, 1, 9, 2, CAST(N'2021-06-11T10:48:42.980' AS DateTime), CAST(N'2021-06-11T10:48:42.980' AS DateTime), 5)
INSERT [dbo].[p2900orderdetail] ([id], [IdOrderShop], [IdShop], [Amount], [CreatedAt], [UpdatedAt], [Star]) VALUES (2, 1, 7, 2, CAST(N'2021-06-11T10:48:47.440' AS DateTime), CAST(N'2021-06-11T10:48:47.440' AS DateTime), 5)
INSERT [dbo].[p2900orderdetail] ([id], [IdOrderShop], [IdShop], [Amount], [CreatedAt], [UpdatedAt], [Star]) VALUES (3, 2, 1, 1, CAST(N'2021-06-11T11:05:08.597' AS DateTime), CAST(N'2021-06-11T11:05:08.597' AS DateTime), 5)
INSERT [dbo].[p2900orderdetail] ([id], [IdOrderShop], [IdShop], [Amount], [CreatedAt], [UpdatedAt], [Star]) VALUES (4, 3, 3, 2, CAST(N'2021-06-11T11:33:52.450' AS DateTime), CAST(N'2021-06-11T11:33:52.450' AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[p2900orderdetail] OFF
GO
SET IDENTITY_INSERT [dbo].[p3000commentstatus] ON 

INSERT [dbo].[p3000commentstatus] ([id], [Name]) VALUES (1, N'M?i t?o')
INSERT [dbo].[p3000commentstatus] ([id], [Name]) VALUES (2, N'???? duy?t')
INSERT [dbo].[p3000commentstatus] ([id], [Name]) VALUES (3, N'T? ch?i')
SET IDENTITY_INSERT [dbo].[p3000commentstatus] OFF
GO
SET IDENTITY_INSERT [dbo].[p300roledetail] ON 

INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (1, 1, 1, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (2, 1, 2, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (3, 1, 3, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (4, 1, 4, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (5, 1, 5, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (6, 1, 6, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (7, 1, 7, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (8, 1, 8, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (9, 1, 9, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (10, 1, 10, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (11, 1, 11, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (12, 1, 12, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (13, 1, 13, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (14, 1, 14, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (15, 1, 15, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (16, 1, 16, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (17, 1, 17, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (18, 1, 18, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (19, 1, 19, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (20, 1, 20, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (21, 1, 21, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (22, 1, 22, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (23, 1, 23, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (24, 1, 24, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (25, 1, 25, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (26, 1, 26, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (27, 1, 27, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (28, 1, 28, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (29, 1, 29, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (30, 1, 30, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (31, 1, 31, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (32, 1, 32, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (33, 1, 33, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (34, 1, 34, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (35, 1, 35, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (36, 1, 36, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (37, 1, 37, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (38, 1, 38, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (39, 1, 39, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (40, 1, 40, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (41, 1, 41, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (42, 1, 42, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (43, 1, 43, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (44, 22, 3, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (45, 22, 4, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (46, 22, 5, 2)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (47, 22, 24, 1)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (48, 22, 25, 1)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (49, 22, 26, 1)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (50, 22, 30, 1)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (51, 22, 37, 1)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (52, 22, 38, 1)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (53, 22, 20, 1)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (54, 22, 21, 1)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (55, 22, 22, 1)
INSERT [dbo].[p300roledetail] ([id], [IdRole], [IdMenu], [Status]) VALUES (56, 22, 33, 1)
SET IDENTITY_INSERT [dbo].[p300roledetail] OFF
GO
SET IDENTITY_INSERT [dbo].[p3200inputproduct] ON 

INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (1, 1, N'0', NULL, CAST(N'2021-06-11T10:34:43.000' AS DateTime), 5, 1)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (2, 1, N'5', NULL, CAST(N'2021-06-11T10:35:03.000' AS DateTime), 2, 4)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (3, 1, N'3', NULL, CAST(N'2021-06-11T10:35:44.000' AS DateTime), 3, 1)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (4, 2, N'5', NULL, CAST(N'2021-06-11T10:36:10.000' AS DateTime), 5, 17)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (5, 2, N'10', NULL, CAST(N'2021-06-11T10:36:35.000' AS DateTime), 10, 17)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (6, 9, N'2', NULL, CAST(N'2021-06-11T11:30:14.000' AS DateTime), 2, 1)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (7, 7, N'2', NULL, CAST(N'2021-06-11T11:30:20.000' AS DateTime), 2, 1)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (8, 7, N'1', NULL, CAST(N'2021-06-11T11:31:48.000' AS DateTime), 1, 1)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (9, 9, N'1', NULL, CAST(N'2021-06-11T11:31:54.000' AS DateTime), 1, 1)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (10, 7, N'1', NULL, CAST(N'2021-06-11T11:32:52.000' AS DateTime), 1, 1)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (11, 9, N'1', NULL, CAST(N'2021-06-11T11:32:57.000' AS DateTime), 1, 1)
INSERT [dbo].[p3200inputproduct] ([id], [IdShop], [Note], [ExpiryDate], [CreatedAt], [Amount], [IdCity]) VALUES (12, 3, N'5', NULL, CAST(N'2021-06-11T11:35:09.000' AS DateTime), 5, 62)
SET IDENTITY_INSERT [dbo].[p3200inputproduct] OFF
GO
SET IDENTITY_INSERT [dbo].[p3300warehouse] ON 

INSERT [dbo].[p3300warehouse] ([id], [IdShop], [Amount], [ExpiryDate], [IdCity]) VALUES (1, 1, 8, NULL, 1)
INSERT [dbo].[p3300warehouse] ([id], [IdShop], [Amount], [ExpiryDate], [IdCity]) VALUES (2, 1, 2, NULL, 4)
INSERT [dbo].[p3300warehouse] ([id], [IdShop], [Amount], [ExpiryDate], [IdCity]) VALUES (3, 2, 15, NULL, 17)
INSERT [dbo].[p3300warehouse] ([id], [IdShop], [Amount], [ExpiryDate], [IdCity]) VALUES (4, 9, 2, NULL, 1)
INSERT [dbo].[p3300warehouse] ([id], [IdShop], [Amount], [ExpiryDate], [IdCity]) VALUES (5, 7, 2, NULL, 1)
INSERT [dbo].[p3300warehouse] ([id], [IdShop], [Amount], [ExpiryDate], [IdCity]) VALUES (6, 3, 5, NULL, 62)
SET IDENTITY_INSERT [dbo].[p3300warehouse] OFF
GO
SET IDENTITY_INSERT [dbo].[p400banner] ON 

INSERT [dbo].[p400banner] ([id], [Image], [Position]) VALUES (1, N'http://35.226.232.199:8000/images\2021_05_17_17_05_59_Chup-hinh-san-pham-Root-03.jpg', 1)
INSERT [dbo].[p400banner] ([id], [Image], [Position]) VALUES (2, N'http://35.226.232.199:8000/images\2021_04_28_13_59_30_c3358bb87f18cf8bedac5b5f63710a0f.jpg', 2)
SET IDENTITY_INSERT [dbo].[p400banner] OFF
GO
SET IDENTITY_INSERT [dbo].[p500footer] ON 

INSERT [dbo].[p500footer] ([id], [Content1], [Content2], [Content3], [AndroidLink], [IosLink]) VALUES (1, N'<div><strong>C&Ocirc;NG TY IZISOFTWARE&nbsp;Vi?t Nam</strong></div>

<p>C&ocirc;ng Ty C? Ph?n C&ocirc;ng ngh? IZI SOFTWARE, chuy&ecirc;n thi?t k? website, marketing online, thi?t k? c&aacute;c ?ng d?ng chuy&ecirc;n nghi?p, app mobile.</p>
', N'<ul>
	<li>Thi?t k? webiste chuy&ecirc;n nghi?p</li>
	<li>Thi?t k? ph?n m?m qu?n tr?</li>
	<li>Thi?t k? ?ng d?ng Android</li>
	<li>Thi?t k? ?ng d?ng IOS</li>
	<li>Thi?t k? Web App</li>
	<li>H? tr? Digital Marketing</li>
	<li>H? tr? qu?ng c&aacute;o Google Ads</li>
	<li>H? tr? SEO Website</li>
</ul>
', N'<p><strong>TH&Ocirc;NG TIN C?N BI?T</strong></p>

<p>Ch&iacute;nh s&aacute;ch d?i tr?</p>

<p>Ch&iacute;nh s&aacute;ch b?o h&agrave;nh</p>

<p>&ETH;i?u kho?n d?ch v?</p>
', N'https://izisoft.io/', N'https://izisoft.io/')
SET IDENTITY_INSERT [dbo].[p500footer] OFF
GO
SET IDENTITY_INSERT [dbo].[p600headerinfo] ON 

INSERT [dbo].[p600headerinfo] ([id], [Phone], [Mail], [Logo]) VALUES (1, N'09888888', N'luongthanhbinh41115@gmail.com', N'http://35.226.232.199:8000/images\2021_06_11_09_08_47_logoizi.png')
SET IDENTITY_INSERT [dbo].[p600headerinfo] OFF
GO
SET IDENTITY_INSERT [dbo].[p700shop] ON 

INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (1, N'???ng h?', N'http://35.226.232.199:8000/images\2021_04_28_13_25_25_dongho.png', N'<p>bbbb</p>
', 300000, 500000, 3, N'http://35.226.232.199:8000/images\2021_04_28_09_21_45_item-menu.jpg', N'<p>23424</p>
', 3, 600000, 10)
INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (2, N'Laptop', N'http://35.226.232.199:8000/images\2021_04_28_09_23_38_maytinh.png', N'<p>bbb</p>

<p>\n</p>
', 400000, 500000, 5, N'http://35.226.232.199:8000/images\2021_04_28_09_23_43_img-contact.png', N'<p>bbb</p>
', 2, 800000, 20)
INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (3, N'??? gia d?ng', N'http://35.226.232.199:8000/images\2021_04_29_09_03_06_nhacua.png', N'<p>46456456</p>
', 20000, 30000, 5, N'http://35.226.232.199:8000/images\2021_04_29_09_03_33_bg-thank.jpg', N'<p>45345</p>
', 4, 50000, 0)
INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (4, N'Gi??y d??p', N'http://35.226.232.199:8000/images\2021_04_29_09_04_40_giay.png', N'<p>bbbbb</p>
', 25000, 30000, 5, N'http://35.226.232.199:8000/images\2021_04_29_09_05_05_giay.png', N'<p>bbb</p>
', 5, 50000, 0)
INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (5, N'M? & b??', N'http://35.226.232.199:8000/images\2021_04_29_09_05_29_me_be.png', N'<p>bbbbb</p>
', 30000, 50000, 5, N'http://35.226.232.199:8000/images\2021_04_29_09_05_42_3 vi.jpg', N'<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/JzOtLeKAHMs" title="YouTube video player" width="560"></iframe></p>
', 7, 300000, 10)
INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (6, N'T??i x??ch', N'http://35.226.232.199:8000/images\2021_04_29_09_06_50_tuivinu.png', N'<p>bbb</p>
', 40000, 60000, 5, N'http://35.226.232.199:8000/images\2021_04_29_09_07_03_img-contact.png', N'<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/JzOtLeKAHMs" title="YouTube video player" width="560"></iframe></p>
', 9, 100000, 10)
INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (7, N'M??n h??nh', N'http://35.226.232.199:8000/images\2021_04_29_09_07_24_tbdt.png', N'<p>bbbb</p>
', 200000, 300000, 5, N'http://35.226.232.199:8000/images\2021_04_29_09_07_37_mt.jpg', N'<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/JzOtLeKAHMs" title="YouTube video player" width="560"></iframe></p>
', 10, 500000, 10)
INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (8, N'??i?n tho?i', N'http://35.226.232.199:8000/images\2021_04_29_09_07_58_phone.png', N'<p>bbb</p>
', 60000, 100000, 4, N'http://35.226.232.199:8000/images\2021_04_29_09_08_13_pw.jpg', N'<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/JzOtLeKAHMs" title="YouTube video player" width="560"></iframe></p>
', 13, 200000, 10)
INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (9, N'Xe', N'http://35.226.232.199:8000/images\2021_04_29_09_08_38_oto.png', N'<p>bbbb</p>
', 50000, 100000, 5, N'http://35.226.232.199:8000/images\2021_04_29_09_08_55_item-menu.jpg', N'<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/JzOtLeKAHMs" title="YouTube video player" width="560"></iframe></p>
', 15, 200000, 0)
INSERT [dbo].[p700shop] ([id], [Title], [Thumbnail], [Description], [PriceOrigin], [PriceCurrent], [Star], [Images], [Video], [IdShopCategories], [PricePromotion], [Point]) VALUES (28, N'???ng h? Casino', N'http://35.226.232.199:8000/images\2021_05_17_16_50_58_Chup-hinh-san-pham-Root-03.jpg', N'<p>testtt</p>
', 30000, 50000, 5, N'http://35.226.232.199:8000/images\2021_05_17_16_49_56_IMG_0124-scaled.jpg', N'<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/MCoqnoVau0g" title="YouTube video player" width="560"></iframe></p>
', 3, 60000, 0)
SET IDENTITY_INSERT [dbo].[p700shop] OFF
GO
SET IDENTITY_INSERT [dbo].[p800shopcombo] ON 

INSERT [dbo].[p800shopcombo] ([id], [Usd], [Ship]) VALUES (1, 23000, 25000)
SET IDENTITY_INSERT [dbo].[p800shopcombo] OFF
GO
ALTER TABLE [dbo].[p000account] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[p000account] ADD  DEFAULT (NULL) FOR [address]
GO
ALTER TABLE [dbo].[p000account] ADD  DEFAULT ('5f4dcc3b5aa765d61d8327deb882cf99') FOR [password]
GO
ALTER TABLE [dbo].[p000account] ADD  CONSTRAINT [DF_p000account_img]  DEFAULT (N'/assets/images/logo-admin.png') FOR [img]
GO
ALTER TABLE [dbo].[p000account] ADD  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[p000account] ADD  DEFAULT (NULL) FOR [role]
GO
ALTER TABLE [dbo].[p1000shopcomment] ADD  CONSTRAINT [DF__p1000shop__IdSho__4BCC3ABA]  DEFAULT (NULL) FOR [IdShop]
GO
ALTER TABLE [dbo].[p1000shopcomment] ADD  CONSTRAINT [DF__p1000shop__IdUse__4CC05EF3]  DEFAULT (NULL) FOR [IdUser]
GO
ALTER TABLE [dbo].[p1000shopcomment] ADD  CONSTRAINT [DF__p1000shop__IdCom__4DB4832C]  DEFAULT (NULL) FOR [IdCommentStatus]
GO
ALTER TABLE [dbo].[p1000shopcomment] ADD  CONSTRAINT [DF__p1000shop__Conte__4EA8A765]  DEFAULT (NULL) FOR [Content]
GO
ALTER TABLE [dbo].[p1000shopcomment] ADD  CONSTRAINT [DF__p1000shop__Creat__4F9CCB9E]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[p1000shopcomment] ADD  CONSTRAINT [DF_p1000shopcomment_IdTypeComment]  DEFAULT ((0)) FOR [IdTypeComment]
GO
ALTER TABLE [dbo].[p1000shopcomment] ADD  CONSTRAINT [DF_p1000shopcomment_IdStaff]  DEFAULT ((0)) FOR [IdStaff]
GO
ALTER TABLE [dbo].[p100menu] ADD  DEFAULT (NULL) FOR [IdParentMenu]
GO
ALTER TABLE [dbo].[p100menu] ADD  DEFAULT (NULL) FOR [IsGroup]
GO
ALTER TABLE [dbo].[p100menu] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p100menu] ADD  DEFAULT (NULL) FOR [Slug]
GO
ALTER TABLE [dbo].[p100menu] ADD  DEFAULT (NULL) FOR [Icon]
GO
ALTER TABLE [dbo].[p100menu] ADD  DEFAULT (NULL) FOR [Position]
GO
ALTER TABLE [dbo].[p1100shopcategories] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p1200mealplantype] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p1300blogcategories] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p1400blog] ADD  DEFAULT (NULL) FOR [IdBlogCategories]
GO
ALTER TABLE [dbo].[p1400blog] ADD  DEFAULT (NULL) FOR [Title]
GO
ALTER TABLE [dbo].[p1400blog] ADD  DEFAULT (NULL) FOR [Thumbnail]
GO
ALTER TABLE [dbo].[p1400blog] ADD  DEFAULT (NULL) FOR [Description]
GO
ALTER TABLE [dbo].[p1400blog] ADD  DEFAULT (NULL) FOR [Content]
GO
ALTER TABLE [dbo].[p1400blog] ADD  DEFAULT (NULL) FOR [NumberView]
GO
ALTER TABLE [dbo].[p1400blog] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[p1400blog] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[p1500contactinfo] ADD  DEFAULT (NULL) FOR [Address]
GO
ALTER TABLE [dbo].[p1500contactinfo] ADD  DEFAULT (NULL) FOR [Phone]
GO
ALTER TABLE [dbo].[p1500contactinfo] ADD  DEFAULT (NULL) FOR [Mail]
GO
ALTER TABLE [dbo].[p1500contactinfo] ADD  DEFAULT (NULL) FOR [Working]
GO
ALTER TABLE [dbo].[p1500contactinfo] ADD  DEFAULT (NULL) FOR [Facebook]
GO
ALTER TABLE [dbo].[p1500contactinfo] ADD  DEFAULT (NULL) FOR [Instagram]
GO
ALTER TABLE [dbo].[p1500contactinfo] ADD  DEFAULT (NULL) FOR [Youtube]
GO
ALTER TABLE [dbo].[p1500contactinfo] ADD  DEFAULT (NULL) FOR [Twitter]
GO
ALTER TABLE [dbo].[p1500contactinfo] ADD  DEFAULT (NULL) FOR [Map]
GO
ALTER TABLE [dbo].[p1600contactstatus] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p1700contactus] ADD  CONSTRAINT [DF__p1700cont__IdCon__6B44E613]  DEFAULT ((1)) FOR [IdContactStatus]
GO
ALTER TABLE [dbo].[p1700contactus] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p1700contactus] ADD  DEFAULT (NULL) FOR [Email]
GO
ALTER TABLE [dbo].[p1700contactus] ADD  DEFAULT (NULL) FOR [Message]
GO
ALTER TABLE [dbo].[p1800userstatus] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p1900roleuser] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p2000user] ADD  CONSTRAINT [DF__p2000user__IdUse__73DA2C14]  DEFAULT (NULL) FOR [IdUserStatus]
GO
ALTER TABLE [dbo].[p2000user] ADD  CONSTRAINT [DF__p2000user__Fulln__74CE504D]  DEFAULT (NULL) FOR [Fullname]
GO
ALTER TABLE [dbo].[p2000user] ADD  CONSTRAINT [DF__p2000user__Email__75C27486]  DEFAULT (NULL) FOR [Email]
GO
ALTER TABLE [dbo].[p2000user] ADD  CONSTRAINT [DF__p2000user__Passw__76B698BF]  DEFAULT (NULL) FOR [Password]
GO
ALTER TABLE [dbo].[p2000user] ADD  CONSTRAINT [DF__p2000user__Avata__77AABCF8]  DEFAULT (NULL) FOR [Avatar]
GO
ALTER TABLE [dbo].[p2000user] ADD  CONSTRAINT [DF__p2000user__IdRol__789EE131]  DEFAULT (NULL) FOR [IdRoleUser]
GO
ALTER TABLE [dbo].[p2000user] ADD  CONSTRAINT [DF__p2000user__Creat__7993056A]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[p2000user] ADD  CONSTRAINT [DF__p2000user__Updat__7A8729A3]  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[p2000user] ADD  CONSTRAINT [DF_p2000user_Point]  DEFAULT ((0)) FOR [Point]
GO
ALTER TABLE [dbo].[p200role] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p2100promotion] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p2100promotion] ADD  DEFAULT (NULL) FOR [PromotionCode]
GO
ALTER TABLE [dbo].[p2100promotion] ADD  DEFAULT (NULL) FOR [PercentCode]
GO
ALTER TABLE [dbo].[p2100promotion] ADD  DEFAULT (NULL) FOR [MoneyDiscount]
GO
ALTER TABLE [dbo].[p2100promotion] ADD  DEFAULT (NULL) FOR [Point]
GO
ALTER TABLE [dbo].[p2200orderstatus] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p2300paymentstatus] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p2400paymenttype] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p2600district] ADD  DEFAULT (NULL) FOR [IdCity]
GO
ALTER TABLE [dbo].[p2600district] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p2700producttype] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  CONSTRAINT [DF__p2800orde__IdPro__0E8E2250]  DEFAULT ((1)) FOR [IdProductType]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [IdUser]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [IdOrderStatus]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [IdCity]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [IdDistrict]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [IdPaymentStatus]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [IdPaymentType]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [TotalPrice]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [PromotionCode]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [Email]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [Phone]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [Address]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (NULL) FOR [Note]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[p2800ordershop] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[p2900orderdetail] ADD  DEFAULT (NULL) FOR [IdOrderShop]
GO
ALTER TABLE [dbo].[p2900orderdetail] ADD  DEFAULT (NULL) FOR [IdShop]
GO
ALTER TABLE [dbo].[p2900orderdetail] ADD  DEFAULT (NULL) FOR [Amount]
GO
ALTER TABLE [dbo].[p2900orderdetail] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[p2900orderdetail] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[p2900orderdetail] ADD  CONSTRAINT [DF_p2900orderdetail_Star]  DEFAULT ((5)) FOR [Star]
GO
ALTER TABLE [dbo].[p3000commentstatus] ADD  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[p300roledetail] ADD  DEFAULT (NULL) FOR [IdRole]
GO
ALTER TABLE [dbo].[p300roledetail] ADD  DEFAULT (NULL) FOR [IdMenu]
GO
ALTER TABLE [dbo].[p3100mypromotion] ADD  DEFAULT (NULL) FOR [IdPromotion]
GO
ALTER TABLE [dbo].[p3100mypromotion] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[p3200inputproduct] ADD  DEFAULT (NULL) FOR [IdShop]
GO
ALTER TABLE [dbo].[p3200inputproduct] ADD  DEFAULT (NULL) FOR [Note]
GO
ALTER TABLE [dbo].[p3200inputproduct] ADD  DEFAULT (NULL) FOR [ExpiryDate]
GO
ALTER TABLE [dbo].[p3200inputproduct] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[p3300warehouse] ADD  DEFAULT (NULL) FOR [IdShop]
GO
ALTER TABLE [dbo].[p3300warehouse] ADD  DEFAULT (NULL) FOR [Amount]
GO
ALTER TABLE [dbo].[p3300warehouse] ADD  DEFAULT (NULL) FOR [ExpiryDate]
GO
ALTER TABLE [dbo].[p400banner] ADD  DEFAULT (NULL) FOR [Image]
GO
ALTER TABLE [dbo].[p400banner] ADD  DEFAULT (NULL) FOR [Position]
GO
ALTER TABLE [dbo].[p600headerinfo] ADD  DEFAULT (NULL) FOR [Phone]
GO
ALTER TABLE [dbo].[p600headerinfo] ADD  DEFAULT (NULL) FOR [Mail]
GO
ALTER TABLE [dbo].[p700shop] ADD  DEFAULT (NULL) FOR [Title]
GO
ALTER TABLE [dbo].[p700shop] ADD  DEFAULT (NULL) FOR [Thumbnail]
GO
ALTER TABLE [dbo].[p700shop] ADD  DEFAULT (NULL) FOR [Description]
GO
ALTER TABLE [dbo].[p700shop] ADD  DEFAULT (NULL) FOR [PriceOrigin]
GO
ALTER TABLE [dbo].[p700shop] ADD  DEFAULT (NULL) FOR [PriceCurrent]
GO
ALTER TABLE [dbo].[p700shop] ADD  DEFAULT (NULL) FOR [Star]
GO
ALTER TABLE [dbo].[p700shop] ADD  DEFAULT (NULL) FOR [Images]
GO
ALTER TABLE [dbo].[p700shop] ADD  DEFAULT (NULL) FOR [Video]
GO
ALTER TABLE [dbo].[p700shop] ADD  DEFAULT (NULL) FOR [IdShopCategories]
GO
ALTER TABLE [dbo].[p700shop] ADD  CONSTRAINT [DF_p700shop_Point]  DEFAULT ((0)) FOR [Point]
GO
ALTER TABLE [dbo].[p800shopcombo] ADD  CONSTRAINT [DF__p800shopco__Name__46136164]  DEFAULT (NULL) FOR [Usd]
GO
ALTER TABLE [dbo].[p800shopcombo] ADD  CONSTRAINT [DF__p800shopc__Price__4707859D]  DEFAULT (NULL) FOR [Ship]
GO
ALTER TABLE [dbo].[p900shopcombodetail] ADD  DEFAULT (NULL) FOR [IdShopCombo]
GO
ALTER TABLE [dbo].[p900shopcombodetail] ADD  DEFAULT (NULL) FOR [IdShop]
GO
USE [master]
GO
ALTER DATABASE [web_ban_hang] SET  READ_WRITE 
GO
