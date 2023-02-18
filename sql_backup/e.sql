USE [elibraryDB]
GO
/****** Object:  Table [dbo].[admin_login_tbl]    Script Date: 2/18/2023 4:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_login_tbl](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[full_name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[author_master_tbl]    Script Date: 2/18/2023 4:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[author_master_tbl](
	[author_id] [nvarchar](20) NOT NULL,
	[author_name] [nchar](50) NOT NULL,
 CONSTRAINT [PK_author_master_tbl] PRIMARY KEY CLUSTERED 
(
	[author_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book_issue_tbl]    Script Date: 2/18/2023 4:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book_issue_tbl](
	[member_id] [nvarchar](50) NOT NULL,
	[member_name] [nvarchar](50) NULL,
	[bood_id] [nvarchar](50) NOT NULL,
	[book_name] [nvarchar](max) NOT NULL,
	[issue_date] [nvarchar](50) NOT NULL,
	[due_date] [nvarchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book_master_tbl]    Script Date: 2/18/2023 4:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book_master_tbl](
	[book_id] [nchar](10) NOT NULL,
	[book_name] [nvarchar](max) NULL,
	[genre] [nvarchar](max) NULL,
	[author_name] [nvarchar](50) NULL,
	[publisher_name] [nvarchar](50) NOT NULL,
	[publish_date] [nvarchar](50) NULL,
	[language] [numeric](18, 0) NOT NULL,
	[edition] [nvarchar](50) NOT NULL,
	[book_cost] [nchar](10) NOT NULL,
	[no_of_pages] [nchar](10) NOT NULL,
	[book_description] [nchar](10) NULL,
	[actual_stock] [nchar](10) NULL,
	[current_stock] [nchar](10) NULL,
	[book_img_link] [nvarchar](50) NULL,
 CONSTRAINT [PK_book_master_tbl] PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[member_master_table]    Script Date: 2/18/2023 4:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[member_master_table](
	[full_name] [nvarchar](50) NOT NULL,
	[dob] [nvarchar](50) NOT NULL,
	[contact_no] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[state] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[pincode] [nvarchar](50) NOT NULL,
	[full_address] [nvarchar](max) NOT NULL,
	[member_id] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[account_status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_member_master_table] PRIMARY KEY CLUSTERED 
(
	[member_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[publisher_master_tbl]    Script Date: 2/18/2023 4:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publisher_master_tbl](
	[publisher_id] [nchar](10) NOT NULL,
	[publisher_name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_publisher_master_tbl] PRIMARY KEY CLUSTERED 
(
	[publisher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[admin_login_tbl] ([username], [password], [full_name]) VALUES (N'admin', N'123', N'rahul')
GO
INSERT [dbo].[admin_login_tbl] ([username], [password], [full_name]) VALUES (N'admin', N'123', N'rahul')
GO
INSERT [dbo].[author_master_tbl] ([author_id], [author_name]) VALUES (N'a002', N'Harivansh                                         ')
GO
INSERT [dbo].[author_master_tbl] ([author_id], [author_name]) VALUES (N'a003', N'Mahadevi Verma                                    ')
GO
INSERT [dbo].[member_master_table] ([full_name], [dob], [contact_no], [email], [state], [city], [pincode], [full_address], [member_id], [password], [account_status]) VALUES (N'Abhishek Sharma', N'2023-03-02', N'1234578990', N'emil@gmil.com', N'Kerala', N'addf', N'2299', N'full address', N'a0006', N'123', N'active')
GO
INSERT [dbo].[member_master_table] ([full_name], [dob], [contact_no], [email], [state], [city], [pincode], [full_address], [member_id], [password], [account_status]) VALUES (N'amit', N'2023-02-02', N'123455666', N'emil@gmil.com', N'Maharashtra', N'addf', N'776', N'asdfgh', N'a1', N'123', N'pending')
GO
INSERT [dbo].[member_master_table] ([full_name], [dob], [contact_no], [email], [state], [city], [pincode], [full_address], [member_id], [password], [account_status]) VALUES (N'123456', N'amit', N'amit', N'2023-02-08', N'Andhra Pradesh', N'665577', N'addf', N'full address once again', N'a3', N'123', N'pending')
GO
INSERT [dbo].[member_master_table] ([full_name], [dob], [contact_no], [email], [state], [city], [pincode], [full_address], [member_id], [password], [account_status]) VALUES (N'Abhishek Sharma', N'2023-02-13', N'9098898899', N'emai8l@gmil.com', N'Gujarat', N'Porbandar', N'253112', N'khugali porbandar Gujarat', N'a4', N'123', N'pending')
GO
INSERT [dbo].[member_master_table] ([full_name], [dob], [contact_no], [email], [state], [city], [pincode], [full_address], [member_id], [password], [account_status]) VALUES (N'Abhishek Sharma', N'', N'', N'', N'Meghalaya', N'addf', N'2222', N'asdfdfff', N'a5', N'123', N'pending')
GO
INSERT [dbo].[member_master_table] ([full_name], [dob], [contact_no], [email], [state], [city], [pincode], [full_address], [member_id], [password], [account_status]) VALUES (N'amit', N'2023-02-08', N'12345678', N'emil@gmil.com', N'Arunachal Pradesh', N'addf', N'1325', N'asdfgh', N'a6', N'123', N'pending')
GO
INSERT [dbo].[member_master_table] ([full_name], [dob], [contact_no], [email], [state], [city], [pincode], [full_address], [member_id], [password], [account_status]) VALUES (N'amit', N'2023-02-01', N'12345', N'emil@gmil.com', N'Manipur', N'addf', N'2245', N'asdfg', N'b1', N'123', N'pending')
GO
