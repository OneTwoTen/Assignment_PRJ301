USE [Restaurant]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/26/2021 3:21:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 10/26/2021 3:21:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] NOT NULL,
	[name] [varchar](150) NOT NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 10/26/2021 3:21:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[fid] [int] NOT NULL,
	[url] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 10/26/2021 3:21:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](150) NOT NULL,
	[category_id] [int] NOT NULL,
	[price] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Food] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[food_order]    Script Date: 10/26/2021 3:21:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[food_order](
	[food_id] [int] NOT NULL,
	[order_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_food_order_1] PRIMARY KEY CLUSTERED 
(
	[food_id] ASC,
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 10/26/2021 3:21:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[gid] [int] NOT NULL,
	[gname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupAcount]    Script Date: 10/26/2021 3:21:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupAcount](
	[gid] [int] NOT NULL,
	[username] [varchar](150) NOT NULL,
 CONSTRAINT [PK_GroupAcount] PRIMARY KEY CLUSTERED 
(
	[gid] ASC,
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupFeature]    Script Date: 10/26/2021 3:21:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupFeature](
	[gid] [int] NOT NULL,
	[fid] [int] NOT NULL,
 CONSTRAINT [PK_GroupFeature] PRIMARY KEY CLUSTERED 
(
	[gid] ASC,
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order1]    Script Date: 10/26/2021 3:21:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[staff_id] [int] NOT NULL,
	[table_id] [int] NOT NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[receipt]    Script Date: 10/26/2021 3:21:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[receipt](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[price] [decimal](18, 0) NOT NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_receipt] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 10/26/2021 3:21:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1) NOT NULL,
	[account_username] [varchar](150) NOT NULL,
	[age] [int] NOT NULL,
	[displayname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[table1]    Script Date: 10/26/2021 3:21:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](150) NOT NULL,
	[status] [varchar](150) NOT NULL,
 CONSTRAINT [PK_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Food]  WITH CHECK ADD  CONSTRAINT [FK_categories_TO_Food] FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[Food] CHECK CONSTRAINT [FK_categories_TO_Food]
GO
ALTER TABLE [dbo].[food_order]  WITH CHECK ADD  CONSTRAINT [FK_food_order_Food] FOREIGN KEY([food_id])
REFERENCES [dbo].[Food] ([id])
GO
ALTER TABLE [dbo].[food_order] CHECK CONSTRAINT [FK_food_order_Food]
GO
ALTER TABLE [dbo].[food_order]  WITH CHECK ADD  CONSTRAINT [FK_food_order_order1] FOREIGN KEY([order_id])
REFERENCES [dbo].[order1] ([id])
GO
ALTER TABLE [dbo].[food_order] CHECK CONSTRAINT [FK_food_order_order1]
GO
ALTER TABLE [dbo].[GroupAcount]  WITH CHECK ADD  CONSTRAINT [FK_GroupAcount_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[GroupAcount] CHECK CONSTRAINT [FK_GroupAcount_Account]
GO
ALTER TABLE [dbo].[GroupAcount]  WITH CHECK ADD  CONSTRAINT [FK_GroupAcount_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[GroupAcount] CHECK CONSTRAINT [FK_GroupAcount_Group]
GO
ALTER TABLE [dbo].[GroupFeature]  WITH CHECK ADD  CONSTRAINT [FK_GroupFeature_Feature] FOREIGN KEY([fid])
REFERENCES [dbo].[Feature] ([fid])
GO
ALTER TABLE [dbo].[GroupFeature] CHECK CONSTRAINT [FK_GroupFeature_Feature]
GO
ALTER TABLE [dbo].[GroupFeature]  WITH CHECK ADD  CONSTRAINT [FK_GroupFeature_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[GroupFeature] CHECK CONSTRAINT [FK_GroupFeature_Group]
GO
ALTER TABLE [dbo].[order1]  WITH CHECK ADD  CONSTRAINT [FK_Staff_TO_order] FOREIGN KEY([staff_id])
REFERENCES [dbo].[Staff] ([id])
GO
ALTER TABLE [dbo].[order1] CHECK CONSTRAINT [FK_Staff_TO_order]
GO
ALTER TABLE [dbo].[order1]  WITH CHECK ADD  CONSTRAINT [FK_table_TO_order] FOREIGN KEY([table_id])
REFERENCES [dbo].[table1] ([id])
GO
ALTER TABLE [dbo].[order1] CHECK CONSTRAINT [FK_table_TO_order]
GO
ALTER TABLE [dbo].[receipt]  WITH CHECK ADD  CONSTRAINT [FK_order_TO_receipt] FOREIGN KEY([order_id])
REFERENCES [dbo].[order1] ([id])
GO
ALTER TABLE [dbo].[receipt] CHECK CONSTRAINT [FK_order_TO_receipt]
GO
