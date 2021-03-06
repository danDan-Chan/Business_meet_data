USE [BeMet]
GO
/****** Object:  Table [dbo].[problem_report]    Script Date: 2020/7/3 下午 05:08:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[problem_report](
	[problem_report_no] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](3000) NULL,
	[user_no] [int] NULL,
	[create_date] [datetime] NULL,
	[modify_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[problem_report_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[problem_report]  WITH CHECK ADD FOREIGN KEY([user_no])
REFERENCES [dbo].[user_information] ([user_no])
GO
