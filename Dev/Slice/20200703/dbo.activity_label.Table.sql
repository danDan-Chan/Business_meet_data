USE [BeMet]
GO
/****** Object:  Table [dbo].[activity_label]    Script Date: 2020/7/3 下午 05:08:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activity_label](
	[activityLabel_no] [int] IDENTITY(1,1) NOT NULL,
	[activity_no] [int] NULL,
	[content] [nvarchar](100) NULL,
	[create_date] [datetime] NULL,
	[modify_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[activityLabel_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[activity_label]  WITH CHECK ADD FOREIGN KEY([activity_no])
REFERENCES [dbo].[timeline] ([timeline_no])
GO
