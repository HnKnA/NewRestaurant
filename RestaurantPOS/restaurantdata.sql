USE [restaurant]
GO
/****** Object:  Table [dbo].[BILL]    Script Date: 6/14/2023 12:21:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BILL](
	[Id] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[Total] [int] NOT NULL,
	[PaymentMethod] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_BILL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BILL_DETAIL]    Script Date: 6/14/2023 12:21:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BILL_DETAIL](
	[BillId] [uniqueidentifier] NOT NULL,
	[FoodId] [int] NOT NULL,
	[UnitPrice] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_BILL_DETAIL] PRIMARY KEY CLUSTERED 
(
	[BillId] ASC,
	[FoodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 6/14/2023 12:21:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[Id] [uniqueidentifier] NOT NULL,
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
	[FullName] [nvarchar](200) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Birthday] [datetime2](7) NOT NULL,
	[VIP] [bit] NOT NULL,
 CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FOOD]    Script Date: 6/14/2023 12:21:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FOOD](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[UnitPrice] [int] NOT NULL,
	[Category] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ImageURL] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_FOOD] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ODER_TABLE]    Script Date: 6/14/2023 12:21:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ODER_TABLE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[TableId] [int] NOT NULL,
	[From] [datetime2](7) NOT NULL,
	[To] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ODER_TABLE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TABLE]    Script Date: 6/14/2023 12:21:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TABLE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[PeopleCount] [int] NOT NULL,
 CONSTRAINT [PK_TABLE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BILL] ([Id], [CustomerId], [Total], [PaymentMethod], [CreatedDate]) VALUES (N'7912948d-99b9-4540-8e9c-5a2dfab415f8', N'f6156861-809d-47e9-9884-20b164e351a4', 218000, N'Chuyển khoản', CAST(N'2023-06-13T15:09:57.5715233' AS DateTime2))
INSERT [dbo].[BILL] ([Id], [CustomerId], [Total], [PaymentMethod], [CreatedDate]) VALUES (N'b2b05a33-6e7b-4335-bb68-c77421cc53c1', N'f6156861-809d-47e9-9884-20b164e351a4', 135000, N'Ví điện tử AirPay', CAST(N'2023-06-13T15:16:06.8190369' AS DateTime2))
GO
INSERT [dbo].[BILL_DETAIL] ([BillId], [FoodId], [UnitPrice], [Quantity], [Price]) VALUES (N'7912948d-99b9-4540-8e9c-5a2dfab415f8', 1, 25000, 1, 25000)
INSERT [dbo].[BILL_DETAIL] ([BillId], [FoodId], [UnitPrice], [Quantity], [Price]) VALUES (N'7912948d-99b9-4540-8e9c-5a2dfab415f8', 6, 89000, 2, 178000)
INSERT [dbo].[BILL_DETAIL] ([BillId], [FoodId], [UnitPrice], [Quantity], [Price]) VALUES (N'7912948d-99b9-4540-8e9c-5a2dfab415f8', 8, 15000, 1, 15000)
INSERT [dbo].[BILL_DETAIL] ([BillId], [FoodId], [UnitPrice], [Quantity], [Price]) VALUES (N'b2b05a33-6e7b-4335-bb68-c77421cc53c1', 6, 89000, 1, 89000)
INSERT [dbo].[BILL_DETAIL] ([BillId], [FoodId], [UnitPrice], [Quantity], [Price]) VALUES (N'b2b05a33-6e7b-4335-bb68-c77421cc53c1', 7, 23000, 2, 46000)
GO
INSERT [dbo].[CUSTOMER] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [Gender], [Birthday], [VIP]) VALUES (N'f6156861-809d-47e9-9884-20b164e351a4', N'tuan.nguyen2102', N'TUAN.NGUYEN2102', N'tuan.nguyen2102@hcmut.edu.vn', N'TUAN.NGUYEN2102@HCMUT.EDU.VN', 0, N'AQAAAAEAACcQAAAAEFNEF+nnXDs1CYHFEQVoDeh+2QfmniGVr53cMqrg7aCdUmZt/imD3ls5schZYGfmlQ==', N'746WQRTR2PTCOCDLGMG6EAAJWHVVCULL', N'7f53e510-bfb4-4b11-bed9-dd04e97edf82', N'0903021428', 0, 0, NULL, 1, 0, N'Tuan', 0, CAST(N'2002-02-21T00:00:00.0000000' AS DateTime2), 0)
GO
SET IDENTITY_INSERT [dbo].[FOOD] ON 

INSERT [dbo].[FOOD] ([Id], [Name], [UnitPrice], [Category], [Description], [ImageURL]) VALUES (1, N'Cua hoàng đế', 25000, N'monnong', N'Cua king crab có thể s.ống khỏe được từ 4-6 tiếng kể từ lúc giao hàng nên rất phù hợp cho biếu tặng hoặc mang đi xa', N'/images/MonAn/mon1.jpg')
INSERT [dbo].[FOOD] ([Id], [Name], [UnitPrice], [Category], [Description], [ImageURL]) VALUES (4, N'Salad thanh cua', 47000, N'Salad', N'Salad kết hợp với thanh cua và nhiều loại rau củ tươi ngon.', N'/images/MonAn/mon2.jpg')
INSERT [dbo].[FOOD] ([Id], [Name], [UnitPrice], [Category], [Description], [ImageURL]) VALUES (6, N'Salad thập cẩm', 89000, N'Salad', N'Salad thập cẩm với đủ các loại thịt và các loại rau củ hòa quyện cùng sốt mayonnaise ngon lành.', N'/images/MonAn/mon3.jpg')
INSERT [dbo].[FOOD] ([Id], [Name], [UnitPrice], [Category], [Description], [ImageURL]) VALUES (7, N'Salad nấm', 23000, N'Salad', N'Salad nấm, sự kết hợp của các loại nấm.', N'/images/MonAn/mon4.jpg')
INSERT [dbo].[FOOD] ([Id], [Name], [UnitPrice], [Category], [Description], [ImageURL]) VALUES (8, N'Salad rau củ', 15000, N'Salad', N'Salad rau củ rất thích hợp dành cho người ăn chay hay những người đang không quá thích ăn thịt.', N'/images/MonAn/mon5.jpg')
INSERT [dbo].[FOOD] ([Id], [Name], [UnitPrice], [Category], [Description], [ImageURL]) VALUES (9, N'Salad cừu', 50000, N'Salad', N'Thịt cừu thượng hạng trong món salad ngon lành, nhiều loại rau củ tươi giúp cho món ăn không bị ngấy.', N'/images/MonAn/mon6.jpg')
INSERT [dbo].[FOOD] ([Id], [Name], [UnitPrice], [Category], [Description], [ImageURL]) VALUES (10, N'Nước ép cà rốt', 10000, N'douong', N'Nước ép từ những trái cà rốt thơm ngon.', N'/images/MonAn/mon7.jpg')
INSERT [dbo].[FOOD] ([Id], [Name], [UnitPrice], [Category], [Description], [ImageURL]) VALUES (11, N'Nước ép cà chua', 12000, N'douong', N'Nước ép được làm từ những trái cà chua thơm ngon.', N'/images/MonAn/mon8.jpg')
INSERT [dbo].[FOOD] ([Id], [Name], [UnitPrice], [Category], [Description], [ImageURL]) VALUES (12, N'Nước ép dưa hấu', 15000, N'douong', N'Nước ép dưa hấu. Mát lạnh, thanh nhiệt giải độc mùa hè.', N'/images/MonAn/mon9.jpg')
INSERT [dbo].[FOOD] ([Id], [Name], [UnitPrice], [Category], [Description], [ImageURL]) VALUES (13, N'Sinh tố dưa gang', 17000, N'montrangmieng', N'Sinh tố được làm từ dưa gang và sữa đặc cùng với đường và đá viên.', N'/images/MonAn/mon10.jpg')
INSERT [dbo].[FOOD] ([Id], [Name], [UnitPrice], [Category], [Description], [ImageURL]) VALUES (14, N'Sinh tố dưa lưới', 17000, N'montrangmieng', N'Sinh tố dưa lưới mát lạnh. Thành phần gồm có sữa đặc, đá, đường, siro.', N'/images/MonAn/mon11.jpg')
INSERT [dbo].[FOOD] ([Id], [Name], [UnitPrice], [Category], [Description], [ImageURL]) VALUES (15, N'Sinh tố xoài', 17000, N'montrangmieng', N'Sinh tố xoài ngọt lịm với những trái xoài nhập từ những khu vực trồng xoài nổi tiếng trong cả nước.', N'/images/MonAn/mon12.jpg')
SET IDENTITY_INSERT [dbo].[FOOD] OFF
GO
SET IDENTITY_INSERT [dbo].[ODER_TABLE] ON 

INSERT [dbo].[ODER_TABLE] ([Id], [CustomerId], [TableId], [From], [To]) VALUES (2, N'f6156861-809d-47e9-9884-20b164e351a4', 1, CAST(N'2020-12-23T15:40:45.2760000' AS DateTime2), CAST(N'2020-12-23T16:20:45.2760000' AS DateTime2))
INSERT [dbo].[ODER_TABLE] ([Id], [CustomerId], [TableId], [From], [To]) VALUES (3, N'f6156861-809d-47e9-9884-20b164e351a4', 1, CAST(N'2020-12-23T18:15:45.2760000' AS DateTime2), CAST(N'2020-12-23T19:20:45.2760000' AS DateTime2))
INSERT [dbo].[ODER_TABLE] ([Id], [CustomerId], [TableId], [From], [To]) VALUES (5, N'f6156861-809d-47e9-9884-20b164e351a4', 2, CAST(N'2023-12-23T15:40:45.2760000' AS DateTime2), CAST(N'2023-12-23T16:50:45.2760000' AS DateTime2))
INSERT [dbo].[ODER_TABLE] ([Id], [CustomerId], [TableId], [From], [To]) VALUES (6, N'f6156861-809d-47e9-9884-20b164e351a4', 2, CAST(N'2023-12-23T08:40:00.0000000' AS DateTime2), CAST(N'2023-12-23T09:50:00.0000000' AS DateTime2))
INSERT [dbo].[ODER_TABLE] ([Id], [CustomerId], [TableId], [From], [To]) VALUES (7, N'f6156861-809d-47e9-9884-20b164e351a4', 2, CAST(N'2023-12-23T11:15:00.0000000' AS DateTime2), CAST(N'2023-12-23T12:20:00.0000000' AS DateTime2))
INSERT [dbo].[ODER_TABLE] ([Id], [CustomerId], [TableId], [From], [To]) VALUES (8, N'f6156861-809d-47e9-9884-20b164e351a4', 1, CAST(N'2023-12-23T11:15:00.0000000' AS DateTime2), CAST(N'2023-12-23T12:20:00.0000000' AS DateTime2))
INSERT [dbo].[ODER_TABLE] ([Id], [CustomerId], [TableId], [From], [To]) VALUES (9, N'f6156861-809d-47e9-9884-20b164e351a4', 2, CAST(N'2023-07-07T08:20:00.0000000' AS DateTime2), CAST(N'2023-07-07T09:25:00.0000000' AS DateTime2))
INSERT [dbo].[ODER_TABLE] ([Id], [CustomerId], [TableId], [From], [To]) VALUES (10, N'f6156861-809d-47e9-9884-20b164e351a4', 2, CAST(N'2024-09-07T08:20:00.0000000' AS DateTime2), CAST(N'2024-09-07T09:25:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ODER_TABLE] OFF
GO
SET IDENTITY_INSERT [dbo].[TABLE] ON 

INSERT [dbo].[TABLE] ([Id], [Name], [PeopleCount]) VALUES (1, N'Ban1', 2)
INSERT [dbo].[TABLE] ([Id], [Name], [PeopleCount]) VALUES (2, N'Ban2', 4)
INSERT [dbo].[TABLE] ([Id], [Name], [PeopleCount]) VALUES (3, N'Ban3', 6)
INSERT [dbo].[TABLE] ([Id], [Name], [PeopleCount]) VALUES (4, N'Ban4', 8)
SET IDENTITY_INSERT [dbo].[TABLE] OFF
GO
ALTER TABLE [dbo].[FOOD] ADD  DEFAULT (N'None.') FOR [Description]
GO
ALTER TABLE [dbo].[BILL]  WITH CHECK ADD  CONSTRAINT [FK_BILL_CUSTOMER_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CUSTOMER] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BILL] CHECK CONSTRAINT [FK_BILL_CUSTOMER_CustomerId]
GO
ALTER TABLE [dbo].[BILL_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK_BILL_DETAIL_BILL_BillId] FOREIGN KEY([BillId])
REFERENCES [dbo].[BILL] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BILL_DETAIL] CHECK CONSTRAINT [FK_BILL_DETAIL_BILL_BillId]
GO
ALTER TABLE [dbo].[BILL_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK_BILL_DETAIL_FOOD_FoodId] FOREIGN KEY([FoodId])
REFERENCES [dbo].[FOOD] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BILL_DETAIL] CHECK CONSTRAINT [FK_BILL_DETAIL_FOOD_FoodId]
GO
ALTER TABLE [dbo].[ODER_TABLE]  WITH CHECK ADD  CONSTRAINT [FK_ODER_TABLE_CUSTOMER_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CUSTOMER] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ODER_TABLE] CHECK CONSTRAINT [FK_ODER_TABLE_CUSTOMER_CustomerId]
GO
ALTER TABLE [dbo].[ODER_TABLE]  WITH CHECK ADD  CONSTRAINT [FK_ODER_TABLE_TABLE_TableId] FOREIGN KEY([TableId])
REFERENCES [dbo].[TABLE] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ODER_TABLE] CHECK CONSTRAINT [FK_ODER_TABLE_TABLE_TableId]
GO
