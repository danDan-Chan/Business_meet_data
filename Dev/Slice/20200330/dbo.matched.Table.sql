USE [business_meet]
GO
/****** Object:  Table [dbo].[matched]    Script Date: 2020/3/30 下午 04:59:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[matched](
	[m_sno] [int] IDENTITY(1,1) NOT NULL,
	[blue_tooth] [varchar](18) NULL,
	[matched_blue_tooth] [varchar](18) NULL,
	[memorandum] [varchar](1000) NULL,
	[create_date] [datetime] NULL,
	[modify_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[m_sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[matched]  WITH CHECK ADD  CONSTRAINT [FK__matched__blue_to__398D8EEE] FOREIGN KEY([blue_tooth])
REFERENCES [dbo].[user_information] ([blue_tooth])
GO
ALTER TABLE [dbo].[matched] CHECK CONSTRAINT [FK__matched__blue_to__398D8EEE]
GO
ALTER TABLE [dbo].[matched]  WITH CHECK ADD  CONSTRAINT [FK__matched__matched__3A81B327] FOREIGN KEY([matched_blue_tooth])
REFERENCES [dbo].[user_information] ([blue_tooth])
GO
ALTER TABLE [dbo].[matched] CHECK CONSTRAINT [FK__matched__matched__3A81B327]
GO
