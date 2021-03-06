USE [BeMet]
GO
/****** Object:  Table [dbo].[timeline]    Script Date: 2020/7/3 下午 05:08:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[timeline](
	[timeline_no] [int] IDENTITY(1,1) NOT NULL,
	[place] [nvarchar](100) NULL,
	[title] [nvarchar](100) NULL,
	[remark] [nvarchar](2500) NULL,
	[timeline_properties_no] [int] NULL,
	[color] [varchar](7) NULL,
	[create_date] [datetime] NULL,
	[modify_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[timeline_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[timeline]  WITH CHECK ADD FOREIGN KEY([timeline_properties_no])
REFERENCES [dbo].[timeline_properties] ([timeline_properties_no])
GO
