USE [BeMet]
GO
/****** Object:  Table [dbo].[user_information]    Script Date: 2020/7/3 下午 05:08:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_information](
	[user_no] [int] IDENTITY(1,1) NOT NULL,
	[account] [varchar](100) NULL,
	[password] [varchar](64) NULL,
	[name] [nvarchar](100) NULL,
	[gender] [char](2) NULL,
	[mail] [varchar](100) NULL,
	[profession] [nvarchar](100) NULL,
	[bluetooth] [varchar](17) NULL,
	[create_date] [datetime] NULL,
	[modify_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
