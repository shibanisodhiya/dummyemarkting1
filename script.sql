
USE [dbemarketing]
GO
/****** Object:  Table [dbo].[tbl_admin]    Script Date: 7/14/2018 5:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_admin](
	[ad_id] [int] IDENTITY(1,1) NOT NULL,
	[ad_username] [nvarchar](50) NOT NULL,
	[ad_password] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ad_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_category]    Script Date: 7/14/2018 5:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_category](
	[cat_id] [int] IDENTITY(1,1) NOT NULL,
	[cat_name] [nvarchar](50) NOT NULL,
	[cat_image] [nvarchar](max) NOT NULL,
	[cat_fk_ad] [int] NULL,
	[cat_status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_product]    Script Date: 7/14/2018 5:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_product](
	[pro_id] [int] IDENTITY(1,1) NOT NULL,
	[pro_name] [nvarchar](50) NOT NULL,
	[pro_image] [nvarchar](max) NOT NULL,
	[pro_des] [nvarchar](max) NOT NULL,
	[pro_price] [int] NULL,
	[pro_fk_cat] [int] NULL,
	[pro_fk_user] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[pro_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 7/14/2018 5:52:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user](
	[u_id] [int] IDENTITY(1,1) NOT NULL,
	[u_name] [nvarchar](50) NOT NULL,
	[u_email] [nvarchar](50) NOT NULL,
	[u_password] [nvarchar](50) NOT NULL,
	[u_image] [nvarchar](max) NOT NULL,
	[u_contact] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbl_admin] ON 

INSERT [dbo].[tbl_admin] ([ad_id], [ad_username], [ad_password]) VALUES (1, N'root', N'admin123')
INSERT [dbo].[tbl_admin] ([ad_id], [ad_username], [ad_password]) VALUES (2, N'admin', N'admin123')
INSERT [dbo].[tbl_admin] ([ad_id], [ad_username], [ad_password]) VALUES (3, N'test', N'admin123')
SET IDENTITY_INSERT [dbo].[tbl_admin] OFF
SET IDENTITY_INSERT [dbo].[tbl_category] ON 

INSERT [dbo].[tbl_category] ([cat_id], [cat_name], [cat_image], [cat_fk_ad], [cat_status]) VALUES (9, N'Animals', N'~/Content/upload/47474012Pets-Animals-720x500.jpg', 1, 1)
INSERT [dbo].[tbl_category] ([cat_id], [cat_name], [cat_image], [cat_fk_ad], [cat_status]) VALUES (10, N'Home Appliances', N'~/Content/upload/10945175504-zs-home_appliances_111-ab.jpg', 1, 1)
INSERT [dbo].[tbl_category] ([cat_id], [cat_name], [cat_image], [cat_fk_ad], [cat_status]) VALUES (11, N'Real Estate', N'~/Content/upload/1298096855504481783-k6ZD--621x414@LiveMint.jpg', 1, 1)
INSERT [dbo].[tbl_category] ([cat_id], [cat_name], [cat_image], [cat_fk_ad], [cat_status]) VALUES (12, N'Vehicles', N'~/Content/upload/1378569238shoppingtools-buildandprice-Rio-SnowWhitePearl-RO_46J.jpg', 1, 1)
INSERT [dbo].[tbl_category] ([cat_id], [cat_name], [cat_image], [cat_fk_ad], [cat_status]) VALUES (13, N'job & services', N'~/Content/upload/1183167686201708091305-11472-Job-Opportunity-05.jpg', 1, 1)
INSERT [dbo].[tbl_category] ([cat_id], [cat_name], [cat_image], [cat_fk_ad], [cat_status]) VALUES (14, N'Furniture', N'~/Content/upload/369272983FNZ1553-AW18-Landing-Furniture-DT-Hor-Banner-880x395-Fabric-Sofa.jpg', 1, 1)
INSERT [dbo].[tbl_category] ([cat_id], [cat_name], [cat_image], [cat_fk_ad], [cat_status]) VALUES (15, N'Garments', N'~/Content/upload/1314136553Shirts_Wholesale-1.jpg', 1, 1)
INSERT [dbo].[tbl_category] ([cat_id], [cat_name], [cat_image], [cat_fk_ad], [cat_status]) VALUES (16, N'Cosmetics', N'~/Content/upload/182975300THUMBNAIL_Fotolia_124863579_Subscription_Monthly_M.jpg', 1, 1)
SET IDENTITY_INSERT [dbo].[tbl_category] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tbl_admi__9CC20817F8DB6EA5]    Script Date: 7/14/2018 5:52:19 PM ******/
ALTER TABLE [dbo].[tbl_admin] ADD UNIQUE NONCLUSTERED 
(
	[ad_username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tbl_cate__FA8C17904FBBAE5C]    Script Date: 7/14/2018 5:52:19 PM ******/
ALTER TABLE [dbo].[tbl_category] ADD UNIQUE NONCLUSTERED 
(
	[cat_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tbl_user__3DF9EF22C972CB58]    Script Date: 7/14/2018 5:52:19 PM ******/
ALTER TABLE [dbo].[tbl_user] ADD UNIQUE NONCLUSTERED 
(
	[u_email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tbl_user__F8193DB7E80F5C72]    Script Date: 7/14/2018 5:52:19 PM ******/
ALTER TABLE [dbo].[tbl_user] ADD UNIQUE NONCLUSTERED 
(
	[u_contact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_category] ADD  DEFAULT ((1)) FOR [cat_status]
GO
ALTER TABLE [dbo].[tbl_category]  WITH CHECK ADD FOREIGN KEY([cat_fk_ad])
REFERENCES [dbo].[tbl_admin] ([ad_id])
GO
ALTER TABLE [dbo].[tbl_product]  WITH CHECK ADD FOREIGN KEY([pro_fk_cat])
REFERENCES [dbo].[tbl_category] ([cat_id])
GO
ALTER TABLE [dbo].[tbl_product]  WITH CHECK ADD FOREIGN KEY([pro_fk_user])
REFERENCES [dbo].[tbl_user] ([u_id])
GO
USE [master]
GO
ALTER DATABASE [dbemarketing] SET  READ_WRITE 
GO
