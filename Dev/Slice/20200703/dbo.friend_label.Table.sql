USE [BeMet]
GO
/****** Object:  Table [dbo].[friend_label]    Script Date: 2020/7/3 下午 05:08:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[friend_label](
	[friend_label_no] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](50) NULL,
	[friend_customization_no] [int] NULL,
	[create_date] [datetime] NULL,
	[modify_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[friend_label_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[friend_label]  WITH CHECK ADD FOREIGN KEY([friend_customization_no])
REFERENCES [dbo].[friend_customization] ([friend_customization_no])
GO
