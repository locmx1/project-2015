USE [WatchShop]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 07/08/2015 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tag] ON
INSERT [dbo].[Tag] ([Id], [Name], [IsActive]) VALUES (12, N'Đồng hồ nam', 1)
INSERT [dbo].[Tag] ([Id], [Name], [IsActive]) VALUES (13, N'Đồng hồ nữ', 1)
INSERT [dbo].[Tag] ([Id], [Name], [IsActive]) VALUES (14, N'Casio', 1)
INSERT [dbo].[Tag] ([Id], [Name], [IsActive]) VALUES (15, N'Rolex', 1)
INSERT [dbo].[Tag] ([Id], [Name], [IsActive]) VALUES (16, N'D & G', 0)
INSERT [dbo].[Tag] ([Id], [Name], [IsActive]) VALUES (17, N'Đeo Tay', 0)
INSERT [dbo].[Tag] ([Id], [Name], [IsActive]) VALUES (18, N'Mạ vàng', 0)
INSERT [dbo].[Tag] ([Id], [Name], [IsActive]) VALUES (19, N'Diesel', 0)
INSERT [dbo].[Tag] ([Id], [Name], [IsActive]) VALUES (20, N'Rado', 0)
INSERT [dbo].[Tag] ([Id], [Name], [IsActive]) VALUES (21, N'Cao Cấp', 0)
SET IDENTITY_INSERT [dbo].[Tag] OFF
/****** Object:  Table [dbo].[Store]    Script Date: 07/08/2015 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Store](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Phone] [varchar](11) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Store] ON
INSERT [dbo].[Store] ([Id], [Name], [Address], [Phone], [IsActive]) VALUES (1, N'Cửa hàng 199', N'199 Phố Vip, Hồ Chí Minh', N'0123456789', 1)
INSERT [dbo].[Store] ([Id], [Name], [Address], [Phone], [IsActive]) VALUES (2, N'Đồng hồ VIP', N'355 CMT8, Hồ Chí Minh', N'1987654321', 1)
SET IDENTITY_INSERT [dbo].[Store] OFF
/****** Object:  Table [dbo].[Role]    Script Date: 07/08/2015 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'User')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Administrator')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'Staff')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (4, N'Manager')
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[Order]    Script Date: 07/08/2015 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [varchar](11) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
	[ConfirmCode] [varchar](5) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT [dbo].[Order] ([Id], [Phone], [OrderDate], [Status], [ConfirmCode]) VALUES (4, N'01698642311', CAST(0x0000A4CE016BA76E AS DateTime), 1, N'80118')
INSERT [dbo].[Order] ([Id], [Phone], [OrderDate], [Status], [ConfirmCode]) VALUES (5, N'01698642311', CAST(0x0000A4CE016E6B5A AS DateTime), 1, N'79893')
INSERT [dbo].[Order] ([Id], [Phone], [OrderDate], [Status], [ConfirmCode]) VALUES (6, N'01698642311', CAST(0x0000A4CE01711DC7 AS DateTime), 1, N'80734')
INSERT [dbo].[Order] ([Id], [Phone], [OrderDate], [Status], [ConfirmCode]) VALUES (7, N'01698642311', CAST(0x0000A4CE0172349D AS DateTime), 1, N'64175')
INSERT [dbo].[Order] ([Id], [Phone], [OrderDate], [Status], [ConfirmCode]) VALUES (8, N'01698642311', CAST(0x0000A4CE0174AC4D AS DateTime), 1, N'44009')
INSERT [dbo].[Order] ([Id], [Phone], [OrderDate], [Status], [ConfirmCode]) VALUES (9, N'01698642311', CAST(0x0000A4CE01790815 AS DateTime), 1, N'64236')
SET IDENTITY_INSERT [dbo].[Order] OFF
/****** Object:  Table [dbo].[LogInformation]    Script Date: 07/08/2015 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LogInformation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Thread] [varchar](255) NOT NULL,
	[Level] [varchar](50) NOT NULL,
	[Logger] [varchar](255) NOT NULL,
	[Message] [varchar](4000) NOT NULL,
	[Exception] [varchar](2000) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 07/08/2015 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Banner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageURL] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CacheData]    Script Date: 07/08/2015 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CacheData](
	[Id] [int] NOT NULL,
	[NumOfWatches] [int] NOT NULL,
	[CacheData] [ntext] NOT NULL,
 CONSTRAINT [PK_CacheData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 07/08/2015 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Member](
	[Id] [varchar](20) NOT NULL,
	[Phone] [varchar](11) NOT NULL,
	[RoleId] [int] NOT NULL,
	[WorkAt] [int] NULL,
	[Password] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Member] ([Id], [Phone], [RoleId], [WorkAt], [Password], [IsActive]) VALUES (N'01698642311', N'01698642311', 1, NULL, N'123', 1)
INSERT [dbo].[Member] ([Id], [Phone], [RoleId], [WorkAt], [Password], [IsActive]) VALUES (N'0918369209', N'0918369209', 1, 1, N'123', 1)
INSERT [dbo].[Member] ([Id], [Phone], [RoleId], [WorkAt], [Password], [IsActive]) VALUES (N'0974975335', N'0974975335', 1, NULL, N'123', 1)
/****** Object:  Table [dbo].[Brand]    Script Date: 07/08/2015 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedByTransactionOf] [varchar](20) NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (1, N'Omega', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (2, N'Rolex', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (3, N'Casio', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (4, N'Apple', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (5, N'Alpina', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (6, N'Anonimo', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (7, N'Cadino', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (8, N'Calvin Klein', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (9, N'Carven', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (10, N'Cyclos', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (11, N'D & G', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (12, N'Damiani', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (13, N'Fortis', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (14, N'Gucci', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (15, N'Guess', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (16, N'Louis Vuitton', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (17, N'Louis Erard', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (18, N'Nike', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (19, N'Rado', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (20, N'Titan', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (21, N'Tutima', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (22, N'Ventura', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (23, N'Xemex', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (24, N'Zeno', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (25, N'Perrelet', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (26, N'Pequignet', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (27, N'Khác', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (28, N'yeah', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (29, N'new yeah', 1, NULL)
INSERT [dbo].[Brand] ([Id], [Name], [IsActive], [CreatedByTransactionOf]) VALUES (30, N'Diesel', 1, NULL)
SET IDENTITY_INSERT [dbo].[Brand] OFF
/****** Object:  Table [dbo].[Message]    Script Date: 07/08/2015 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Message](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](250) NOT NULL,
	[MemberId] [varchar](20) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Model]    Script Date: 07/08/2015 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Model](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[BrandId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedByTransactionOf] [varchar](20) NULL,
 CONSTRAINT [PK_Model] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Model] ON
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (1, N'G-Shock AW-591MS-1ADR', 3, 2150000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (3, N'Quartz MTP-1183E-7ADF', 3, 1200000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (4, N'G-Shock  AW-590-1ADR', 3, 1935000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (5, N'AW-590-1ADR', 3, 2000000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (7, N'EFR-537BK-1AVDF', 3, 5000000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (8, N'LTP-V004D-1BUDF', 3, 80000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (17, N'BEL-100D-1A2VDF', 3, 1527000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (18, N'BEL-130D-1AVDF', 3, 2494000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (19, N'BEL-130D-4AVDF', 3, 2494000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (20, N'BEL-130L-1AVDF', 3, 2365000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (21, N'BEL-130L-7AVDF', 3, 2365000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (22, N'BEM-126D-1AVDF', 3, 2150000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (166, N'DW0314', 11, 2035000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (167, N'DW0313', 11, 1800000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (168, N'DW0316', 11, 2135000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (169, N'DW0305', 11, 3310000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (170, N'DW0428', 11, 2935000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (171, N'Dw0388', 11, 1885000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (172, N'DW0395', 11, 2935000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (173, N'DZ4283', 30, 4400000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (174, N'DZ4281', 30, 3300000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (175, N'DZ1370', 30, 2300000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (176, N'DZ4310', 30, 2850000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (177, N'DZ4216', 30, 3200000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (178, N'DZ7279', 30, 6700000, 1, NULL)
INSERT [dbo].[Model] ([Id], [Name], [BrandId], [Price], [IsActive], [CreatedByTransactionOf]) VALUES (179, N'R15965103', 19, 31650000, 0, NULL)
SET IDENTITY_INSERT [dbo].[Model] OFF
/****** Object:  Table [dbo].[Watch]    Script Date: 07/08/2015 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Watch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[GlassType] [nvarchar](50) NULL,
	[CaseMeterial] [nvarchar](50) NULL,
	[MainColor] [nvarchar](50) NULL,
	[Images] [varchar](250) NULL,
	[InTransactionPrice] [float] NOT NULL,
	[TransactionType] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Description] [nvarchar](250) NULL,
	[MemberId] [varchar](20) NULL,
	[ModelId] [int] NULL,
	[AvailableAt] [int] NULL,
	[ConfirmPrice] [float] NULL,
	[ConfirmCode] [varchar](5) NULL,
	[CreatedTime] [datetime] NULL,
	[Size] [varchar](50) NULL,
	[PurchasedBy] [varchar](20) NULL,
 CONSTRAINT [PK_Watch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Watch] ON
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (15, N'Casio BEL-100D-1A2VDF', N'Mineral Crystal (Kính Cứng)', N'Thép không gỉ', N'Đen', N'/Images/Upload/63571824000000_1.jpg;/Images/Upload/63571824000000_2.jpg;/Images/Upload/63571824000000_3.jpg', 1527000, 0, 1, N'Casio BEL-100D-1A2VDF', N'01698642311', 17, 1, 1627000, N'64236', CAST(0x0000A4CE01790814 AS DateTime), N'30.5mm × 21mm', NULL)
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (16, N'Casio BEL-130D-1AVDF', N'Mineral Crystal (Kính Cứng)', N'Thép không gỉ', N'Đen', N'/Images/Upload/63571824000000_1.jpg', 2494000, 0, 1, N'Casio BEL-130D-1AVDF', N'01698642311', 18, 1, 2594000, N'44009', CAST(0x0000A4CE0174AC4C AS DateTime), N'32mm', NULL)
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (22, N'Casio BEL-130D-4AVDF', N'Mineral Crystal (Kính Cứng)', N'Thép không gỉ', N'Hồng', N'/Images/Upload/63571824000000_1.jpg;/Images/Upload/63571824000000_2.jpg', 2494000, 0, 1, N'Casio BEL-130D-4AVDF', N'01698642311', 19, 1, 2594000, N'64175', CAST(0x0000A4CE0172349D AS DateTime), N'32mm', NULL)
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (23, N'Casio BEL-130L-1AVDF', N'Mineral Crystal (Kính Cứng)', N'Thép không gỉ', N'Đen', N'/Images/Upload/63571824000000_1.jpg', 2365000, 0, 1, N'Casio BEL-130L-1AVDF', N'01698642311', 20, 1, 2465000, N'80734', CAST(0x0000A4CE01711DC7 AS DateTime), N'32mm', NULL)
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (24, N'Casio BEL-130L-7AVDF', N'Mineral Crystal (Kính Cứng)', N'Thép không gỉ', N'Trắng', N'/Images/Upload/63571824000000_1.jpg;/Images/Upload/63571824000000_2.jpg;/Images/Upload/63571824000000_3.jpg', 2365000, 0, 1, N'Casio BEL-130L-7AVDF', N'01698642311', 21, 1, 2465000, N'79893', CAST(0x0000A4CE016E6B58 AS DateTime), N'32mm', NULL)
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (25, N'Casio BEM-126D-1AVDF', N'Mineral Crystal (Kính Cứng)', N'Thép không gỉ', N'Đen', N'/Images/Upload/63571824000000_1.jpg;/Images/Upload/63571824000000_2.jpg;/Images/Upload/63571824000000_3.jpg;/Images/Upload/63571824000000_4.jpg;/Images/Upload/63571824000000_5.jpg', 2150000, 0, 1, N'Casio BEM-126D-1AVDF', N'01698642311', 22, 1, 2250000, N'80118', CAST(0x0000A4CE016BA735 AS DateTime), N'41mm', NULL)
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (26, N'Đồng hồ D&G DW0314', N'Kính cứng', N'Thép không gỉ', N'Xám Đen', N';/Images/Upload/1436288853.png', 1935000, 0, 1, N'Đồng hồ cao cấp, xuất xứ từ Ý', N'0918369209', 166, 2, 2035000, NULL, CAST(0x0000A4CE016BA735 AS DateTime), N'40mm x 40mm', NULL)
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (27, N'Đồng hồ D&G DW0313', N'Mineral Crystal (Kính Cứng)', N'Thép không gỉ', N'Trắng bạc', N';/Images/Upload/1436289575.png', 1700000, 0, 2, N'Đồng hồ cao cấp dành cho phái mạnh
Xuất xứ từ xứ sở mì ống.', N'0918369209', 167, 1, 1800000, NULL, CAST(0x0000A4CF000561DD AS DateTime), N'4mm x 40mm', NULL)
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (28, N'Đồng hồ D&G DW0316', N'Kính cứng', N'Thép không gỉ', N'Đen', N';/Images/Upload/1436289783.png', 2035000, 0, 1, N'Đồng hồ cao cấp nam, xuất xứ từ Ý', N'0918369209', 168, 1, 2135000, NULL, CAST(0x0000A4CF00065571 AS DateTime), N'40mm x 40mm', NULL)
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (29, N'Đồng hồ D&G DW0305', N'Kính cứng', N'Thép không gỉ', N'Trắng bạc', N';/Images/Upload/1436291050.png;/Images/Upload/1436291051.png', 3110000, 0, 1, N'Đồng hồ cao cấp với tông màu sáng có xuất xứ từ Ý', N'0918369209', 169, 1, 3310000, NULL, CAST(0x0000A4CF00077266 AS DateTime), N'40mm x 40mm', NULL)
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (30, N'Đồng hồ D&G DW0428', N'Kính cưng', N'Thép không gỉ', N'Bạc - Đỏ', N';/Images/Upload/1436291226.png', 2735000, 0, 2, N'Đồng hồ cao cấp xuất xứ từ Ý
Dây da màu đỏ sẫm tạo cảm giác quý phái', N'0918369209', 170, 1, 2935000, NULL, CAST(0x0000A4CF000CF043 AS DateTime), N'40mm x 40mm', NULL)
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (31, N'Đồng hồ D&G DW0388', N'Kính cứng', N'Thép không gỉ', N'Trắng bạc', N';/Images/Upload/1436291466.png', 1700000, 0, 1, N'Đồng cao cấp dành cho nữ xuất xứ từ Ý', N'0918369209', 171, 1, 1885000, NULL, CAST(0x0000A4CF000E099C AS DateTime), N'40mm x 40mm', NULL)
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (32, N'Đồng hồ D&G DW0395', N'Kính cứng', N'Thép không rỉ, mạ vàng 18K', N'Vàng', N';/Images/Upload/1436291695.png', 2700000, 0, 1, N'Dòng sản phẩm cao cấp dành cho nữ của hãng D & G', N'0918369209', 172, 1, 2935000, NULL, CAST(0x0000A4CF000F15CE AS DateTime), N'40mm x 40mm', NULL)
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (33, N'Diesel Chronograph Watch Men DZ4283', N'Mineral Crystal (Kính Cứng)', N'Thép Không Gỉ', N'Đen', N';/Images/Upload/1436336553.jpg;/Images/Upload/1436336554.jpg;/Images/Upload/1436336555.jpg', 4210000, 0, 1, N'N/A', N'0974975335', 173, 1, 4400000, NULL, CAST(0x0000A4CF00DC6DE7 AS DateTime), N'52mm x 52mm x 14mm', NULL)
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (34, N'Diesel Chronograph Watch Men DZ4281', N'Mineral Crystal (Kính Cứng)', N'Thép Không Gỉ', N'Xanh Nâu', N';/Images/Upload/1436337503.jpg;/Images/Upload/1436337504.jpg;/Images/Upload/1436337505.jpg', 3200000, 0, 2, N'N/A', N'0974975335', 174, 1, 3300000, NULL, CAST(0x0000A4CF00E0C78D AS DateTime), N'52mm x 52mm x 14mm', NULL)
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (35, N'Diesel Metal Casual Mens Watch DZ1370', N'Mineral Crystal (Kính Cứng)', N'Thép Không Gỉ', N'Bạc', N';/Images/Upload/1436338013.jpg;/Images/Upload/1436338012.jpg', 2200000, 0, 1, N'Đồng hồ đeo tay nam, mạnh mẽ, cá tính.', N'0974975335', 175, 1, 2300000, NULL, CAST(0x0000A4CF00E31BCC AS DateTime), N'52mm x 42mm x 12mm', NULL)
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (36, N'Diesel Chronograph Watch Franchise Men DZ4310', N'Mineral Crystal (Kính Cứng)', N'Thép Không Gỉ', N'Vàng Nâu', N';/Images/Upload/1436338568.jpg;/Images/Upload/1436338569.jpg;/Images/Upload/1436338570.jpg', 2770000, 0, 2, N'Đồng hồ Diesel đến từ Italy. Thiết kế nam tính, khoẻ khoắn.', N'0974975335', 176, 1, 2850000, NULL, CAST(0x0000A4CF00E5A70E AS DateTime), N'50mm x 50mm x13 mm', NULL)
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (37, N'Diesel Leather Belt Black Chronograph DZ4216', N'Mineral Crystal (Kính Cứng)', N'Thép Không Gỉ', N'Đen', N';/Images/Upload/1436339376.jpg;/Images/Upload/1436339377.jpg', 3000000, 0, 1, N'N/A', N'0974975335', 177, 1, 3200000, NULL, CAST(0x0000A4CF00E95A2A AS DateTime), N'51mm x 51mm x 12mm', NULL)
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (38, N'Diesel Men''s Watches Chronograph Red DZ7279', N'Mineral Glass', N'Nhựa x Thép Không Gỉ', N'Đỏ', N';/Images/Upload/1436340114.jpg;/Images/Upload/1436340115.jpg', 6500000, 0, 1, N'N/A', N'0974975335', 178, 1, 6700000, NULL, CAST(0x0000A4CF00ECBB64 AS DateTime), N'65mm x 57mm x 14mm', NULL)
INSERT [dbo].[Watch] ([Id], [Name], [GlassType], [CaseMeterial], [MainColor], [Images], [InTransactionPrice], [TransactionType], [Status], [Description], [MemberId], [ModelId], [AvailableAt], [ConfirmPrice], [ConfirmCode], [CreatedTime], [Size], [PurchasedBy]) VALUES (39, N'Rado D-Star 200 R15965103', N'Sapphire Crystal', N'Thép Không Gỉ x Ceramic', N'Xám Đen', N';/Images/Upload/1436340779.jpg;/Images/Upload/1436340780.jpg;/Images/Upload/1436340781.jpg;/Images/Upload/1436340782.jpg', 31570000, 0, 1, N'Đồng hồ cao cấp Rado D-Star', N'0974975335', 179, 1, 31650000, NULL, CAST(0x0000A4CF00EFC65A AS DateTime), N'50mm x 43mm x16mm', NULL)
SET IDENTITY_INSERT [dbo].[Watch] OFF
/****** Object:  Table [dbo].[WristWatch]    Script Date: 07/08/2015 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WristWatch](
	[Id] [int] NOT NULL,
	[Gender] [bit] NOT NULL,
	[DisplayType] [bit] NULL,
	[IsSmartWatch] [bit] NOT NULL,
	[WaterProof] [int] NULL,
	[StrapMeterial] [nvarchar](50) NULL,
 CONSTRAINT [PK_WristWatch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (15, 0, 1, 0, 5, N'Thép Không Gỉ')
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (16, 0, 1, 0, 5, N'Thép Không Gỉ')
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (22, 0, 1, 0, 5, N'Thép Không Gỉ')
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (23, 0, 1, 0, 5, N'Da')
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (24, 0, 1, 0, 5, N'Da')
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (25, 1, 1, 0, 10, N'Thép Không Gỉ')
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (26, 1, 1, 0, 3, N'Da')
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (27, 1, 1, 0, 3, N'Da')
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (28, 1, 1, 0, 3, N'Da')
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (29, 1, 1, 0, 3, N'Da')
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (30, 1, 1, 0, 0, N'Da')
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (31, 0, 1, 0, 3, N'Thép Không Gỉ')
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (32, 0, 1, 0, 3, N'Thép Không Gỉ')
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (33, 1, 1, 0, 10, N'Thép Không Gỉ')
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (34, 1, 1, 0, 10, N'Da')
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (35, 1, 1, 0, 10, N'Thép Không Gỉ')
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (36, 1, 1, 0, 10, N'Da')
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (37, 1, 1, 0, 0, N'Da')
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (38, 1, 1, 0, 10, N'Nhựa')
INSERT [dbo].[WristWatch] ([Id], [Gender], [DisplayType], [IsSmartWatch], [WaterProof], [StrapMeterial]) VALUES (39, 1, 1, 0, 10, N'Thép Không Gỉ')
/****** Object:  Table [dbo].[Watch_Tag]    Script Date: 07/08/2015 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Watch_Tag](
	[WatchId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
 CONSTRAINT [PK_Watch_Tag] PRIMARY KEY CLUSTERED 
(
	[WatchId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (15, 13)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (15, 14)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (26, 12)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (26, 16)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (26, 17)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (27, 12)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (27, 16)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (27, 17)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (28, 16)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (29, 16)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (30, 16)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (31, 13)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (31, 16)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (32, 13)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (32, 16)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (32, 18)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (33, 19)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (34, 19)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (35, 19)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (36, 19)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (37, 19)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (38, 19)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (39, 12)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (39, 20)
INSERT [dbo].[Watch_Tag] ([WatchId], [TagId]) VALUES (39, 21)
/****** Object:  Table [dbo].[SellOrder]    Script Date: 07/08/2015 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellOrder](
	[Id] [int] NOT NULL,
	[WatchId] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_SellOrder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WallLock]    Script Date: 07/08/2015 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WallLock](
	[Id] [int] NOT NULL,
	[Shape] [nvarchar](50) NULL,
	[DisplayType] [bit] NULL,
 CONSTRAINT [PK_WallLock] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Timepeice]    Script Date: 07/08/2015 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timepeice](
	[Id] [int] NOT NULL,
	[WoodType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Timepeice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExchangeRequest]    Script Date: 07/08/2015 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExchangeRequest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [varchar](20) NULL,
	[OwnedWatch] [int] NULL,
	[WishWatch] [int] NULL,
	[ConfirmCode] [varchar](5) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_ExchangeRequest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BuyOrder]    Script Date: 07/08/2015 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BuyOrder](
	[Id] [int] NOT NULL,
	[WatchId] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_BuyOrder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BuyOrder] ([Id], [WatchId], [Price]) VALUES (4, 25, 2150000)
INSERT [dbo].[BuyOrder] ([Id], [WatchId], [Price]) VALUES (5, 24, 2365000)
INSERT [dbo].[BuyOrder] ([Id], [WatchId], [Price]) VALUES (6, 23, 2365000)
INSERT [dbo].[BuyOrder] ([Id], [WatchId], [Price]) VALUES (7, 22, 2494000)
INSERT [dbo].[BuyOrder] ([Id], [WatchId], [Price]) VALUES (8, 16, 2494000)
INSERT [dbo].[BuyOrder] ([Id], [WatchId], [Price]) VALUES (9, 15, 1527000)
/****** Object:  Default [DF_Brand_isActive]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[Brand] ADD  CONSTRAINT [DF_Brand_isActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_Member_Id]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[Member] ADD  CONSTRAINT [DF_Member_Id]  DEFAULT ((1)) FOR [Id]
GO
/****** Object:  Default [DF_Model_IsActive]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[Model] ADD  CONSTRAINT [DF_Model_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_Store_IsActive]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[Store] ADD  CONSTRAINT [DF_Store_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_Watch_CreatedTime]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[Watch] ADD  CONSTRAINT [DF_Watch_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
/****** Object:  ForeignKey [FK_Brand_UserID]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[Brand]  WITH CHECK ADD  CONSTRAINT [FK_Brand_UserID] FOREIGN KEY([CreatedByTransactionOf])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[Brand] CHECK CONSTRAINT [FK_Brand_UserID]
GO
/****** Object:  ForeignKey [FK_BuyOrder_Order]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[BuyOrder]  WITH CHECK ADD  CONSTRAINT [FK_BuyOrder_Order] FOREIGN KEY([Id])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[BuyOrder] CHECK CONSTRAINT [FK_BuyOrder_Order]
GO
/****** Object:  ForeignKey [FK_BuyOrder_Watch]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[BuyOrder]  WITH CHECK ADD  CONSTRAINT [FK_BuyOrder_Watch] FOREIGN KEY([WatchId])
REFERENCES [dbo].[Watch] ([Id])
GO
ALTER TABLE [dbo].[BuyOrder] CHECK CONSTRAINT [FK_BuyOrder_Watch]
GO
/****** Object:  ForeignKey [FK_ExchangeRequest_Member]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[ExchangeRequest]  WITH CHECK ADD  CONSTRAINT [FK_ExchangeRequest_Member] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[ExchangeRequest] CHECK CONSTRAINT [FK_ExchangeRequest_Member]
GO
/****** Object:  ForeignKey [FK_ExchangeRequest_Watch]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[ExchangeRequest]  WITH CHECK ADD  CONSTRAINT [FK_ExchangeRequest_Watch] FOREIGN KEY([OwnedWatch])
REFERENCES [dbo].[Watch] ([Id])
GO
ALTER TABLE [dbo].[ExchangeRequest] CHECK CONSTRAINT [FK_ExchangeRequest_Watch]
GO
/****** Object:  ForeignKey [FK_ExchangeRequest_Watch1]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[ExchangeRequest]  WITH CHECK ADD  CONSTRAINT [FK_ExchangeRequest_Watch1] FOREIGN KEY([WishWatch])
REFERENCES [dbo].[Watch] ([Id])
GO
ALTER TABLE [dbo].[ExchangeRequest] CHECK CONSTRAINT [FK_ExchangeRequest_Watch1]
GO
/****** Object:  ForeignKey [FK_Member_Role]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Member_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Member_Role]
GO
/****** Object:  ForeignKey [FK_Member_Store]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Member_Store] FOREIGN KEY([WorkAt])
REFERENCES [dbo].[Store] ([Id])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Member_Store]
GO
/****** Object:  ForeignKey [FK_Message_Member]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Member] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Member]
GO
/****** Object:  ForeignKey [FK_Model_Brand]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[Model]  WITH CHECK ADD  CONSTRAINT [FK_Model_Brand] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([Id])
GO
ALTER TABLE [dbo].[Model] CHECK CONSTRAINT [FK_Model_Brand]
GO
/****** Object:  ForeignKey [FK_Model_UserID]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[Model]  WITH CHECK ADD  CONSTRAINT [FK_Model_UserID] FOREIGN KEY([CreatedByTransactionOf])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[Model] CHECK CONSTRAINT [FK_Model_UserID]
GO
/****** Object:  ForeignKey [FK_SellOrder_Order]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[SellOrder]  WITH CHECK ADD  CONSTRAINT [FK_SellOrder_Order] FOREIGN KEY([Id])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[SellOrder] CHECK CONSTRAINT [FK_SellOrder_Order]
GO
/****** Object:  ForeignKey [FK_SellOrder_Watch]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[SellOrder]  WITH CHECK ADD  CONSTRAINT [FK_SellOrder_Watch] FOREIGN KEY([WatchId])
REFERENCES [dbo].[Watch] ([Id])
GO
ALTER TABLE [dbo].[SellOrder] CHECK CONSTRAINT [FK_SellOrder_Watch]
GO
/****** Object:  ForeignKey [FK_Timepeice_Watch]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[Timepeice]  WITH CHECK ADD  CONSTRAINT [FK_Timepeice_Watch] FOREIGN KEY([Id])
REFERENCES [dbo].[Watch] ([Id])
GO
ALTER TABLE [dbo].[Timepeice] CHECK CONSTRAINT [FK_Timepeice_Watch]
GO
/****** Object:  ForeignKey [FK_WallLock_Watch]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[WallLock]  WITH CHECK ADD  CONSTRAINT [FK_WallLock_Watch] FOREIGN KEY([Id])
REFERENCES [dbo].[Watch] ([Id])
GO
ALTER TABLE [dbo].[WallLock] CHECK CONSTRAINT [FK_WallLock_Watch]
GO
/****** Object:  ForeignKey [FK_Watch_Member]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[Watch]  WITH CHECK ADD  CONSTRAINT [FK_Watch_Member] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[Watch] CHECK CONSTRAINT [FK_Watch_Member]
GO
/****** Object:  ForeignKey [FK_Watch_Model]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[Watch]  WITH CHECK ADD  CONSTRAINT [FK_Watch_Model] FOREIGN KEY([ModelId])
REFERENCES [dbo].[Model] ([Id])
GO
ALTER TABLE [dbo].[Watch] CHECK CONSTRAINT [FK_Watch_Model]
GO
/****** Object:  ForeignKey [FK_Watch_Store]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[Watch]  WITH CHECK ADD  CONSTRAINT [FK_Watch_Store] FOREIGN KEY([AvailableAt])
REFERENCES [dbo].[Store] ([Id])
GO
ALTER TABLE [dbo].[Watch] CHECK CONSTRAINT [FK_Watch_Store]
GO
/****** Object:  ForeignKey [FK_Watch_Tag_Tag]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[Watch_Tag]  WITH CHECK ADD  CONSTRAINT [FK_Watch_Tag_Tag] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tag] ([Id])
GO
ALTER TABLE [dbo].[Watch_Tag] CHECK CONSTRAINT [FK_Watch_Tag_Tag]
GO
/****** Object:  ForeignKey [FK_Watch_Tag_Watch]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[Watch_Tag]  WITH CHECK ADD  CONSTRAINT [FK_Watch_Tag_Watch] FOREIGN KEY([WatchId])
REFERENCES [dbo].[Watch] ([Id])
GO
ALTER TABLE [dbo].[Watch_Tag] CHECK CONSTRAINT [FK_Watch_Tag_Watch]
GO
/****** Object:  ForeignKey [FK_WristWatch_Watch]    Script Date: 07/08/2015 14:34:55 ******/
ALTER TABLE [dbo].[WristWatch]  WITH CHECK ADD  CONSTRAINT [FK_WristWatch_Watch] FOREIGN KEY([Id])
REFERENCES [dbo].[Watch] ([Id])
GO
ALTER TABLE [dbo].[WristWatch] CHECK CONSTRAINT [FK_WristWatch_Watch]
GO
