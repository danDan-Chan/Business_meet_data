USE [BeMet]
GO
/****** Object:  Table [dbo].[friend_remark]    Script Date: 2020/7/3 下午 05:08:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[friend_remark](
	[friendRemarks_no] [int] IDENTITY(1,1) NOT NULL,
	[friendLabel_no] [int] NULL,
	[friend_customization_no] [int] NULL,
	[friend_no] [int] NULL,
	[create_date] [datetime] NULL,
	[modify_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[friendRemarks_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[friend_remark]  WITH CHECK ADD FOREIGN KEY([friendLabel_no])
REFERENCES [dbo].[friend_label] ([friend_label_no])
GO
ALTER TABLE [dbo].[friend_remark]  WITH CHECK ADD FOREIGN KEY([friend_customization_no])
REFERENCES [dbo].[friend_customization] ([friend_customization_no])
GO
ALTER TABLE [dbo].[friend_remark]  WITH CHECK ADD FOREIGN KEY([friend_no])
REFERENCES [dbo].[friend] ([friend_no])
GO
