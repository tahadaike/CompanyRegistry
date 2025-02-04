USE [CompanyRegistry]
GO
/****** Object:  Table [dbo].[CampanyAttachments]    Script Date: 3/29/2024 10:39:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CampanyAttachments](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CompaniesId] [bigint] NULL,
	[Name] [nvarchar](550) NULL,
	[Path] [nvarchar](550) NULL,
	[Type] [smallint] NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
	[Status] [smallint] NULL,
 CONSTRAINT [PK_CampanyAttachments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 3/29/2024 10:39:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[Status] [smallint] NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 3/29/2024 10:39:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NULL,
	[MunicipalitiesId] [bigint] NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](50) NULL,
	[OwnerName] [nvarchar](250) NULL,
	[OwnerPhone] [nvarchar](250) NULL,
	[ReceiptNumber] [nvarchar](50) NULL,
	[EstablishmentDate] [datetime] NULL,
	[LicenseNumber] [nvarchar](50) NULL,
	[CommercialRegistrationNumber] [nvarchar](50) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
	[Levels] [smallint] NULL,
	[Status] [smallint] NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Issuse]    Script Date: 3/29/2024 10:39:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Issuse](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CompaniesId] [bigint] NULL,
	[Name] [nvarchar](max) NULL,
	[Resone] [nvarchar](max) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
	[ResolvedBy] [smallint] NULL,
	[ResolvedOn] [datetime] NULL,
	[Status] [smallint] NULL,
 CONSTRAINT [PK_Problems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lincense]    Script Date: 3/29/2024 10:39:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lincense](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CompaniesId] [bigint] NULL,
	[ExpiryOn] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
	[Status] [smallint] NULL,
 CONSTRAINT [PK_Lincense] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipalities]    Script Date: 3/29/2024 10:39:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipalities](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CitiesId] [bigint] NULL,
	[Name] [nvarchar](150) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[Status] [smallint] NULL,
 CONSTRAINT [PK_Municipalities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 3/29/2024 10:39:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Operations] [nvarchar](50) NULL,
	[Descriptions] [nvarchar](max) NULL,
	[Controller] [nvarchar](250) NULL,
	[OldObject] [nvarchar](max) NULL,
	[NewObject] [nvarchar](max) NULL,
	[ItemId] [bigint] NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/29/2024 10:39:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[LoginName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](250) NULL,
	[UserType] [smallint] NULL,
	[ImageName] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[Phone] [nvarchar](25) NULL,
	[ExtraPhone] [nvarchar](50) NULL,
	[BirthDate] [datetime] NULL,
	[Gender] [smallint] NULL,
	[OTP] [varchar](120) NULL,
	[OTPDate] [datetime] NULL,
	[OTPTryAtempt] [int] NULL,
	[OTPTryAtemptDate] [datetime] NULL,
	[LoginTryAttemptDate] [datetime] NULL,
	[LoginTryAttempts] [smallint] NULL,
	[LastLoginOn] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
	[Status] [smallint] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[CampanyAttachments] ADD  CONSTRAINT [DF_CampanyAttachments_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_UserType]  DEFAULT ((2)) FOR [UserType]
GO
ALTER TABLE [dbo].[CampanyAttachments]  WITH CHECK ADD  CONSTRAINT [FK_CampanyAttachments_Companies] FOREIGN KEY([CompaniesId])
REFERENCES [dbo].[Companies] ([Id])
GO
ALTER TABLE [dbo].[CampanyAttachments] CHECK CONSTRAINT [FK_CampanyAttachments_Companies]
GO
ALTER TABLE [dbo].[Companies]  WITH CHECK ADD  CONSTRAINT [FK_Companies_Municipalities] FOREIGN KEY([MunicipalitiesId])
REFERENCES [dbo].[Municipalities] ([Id])
GO
ALTER TABLE [dbo].[Companies] CHECK CONSTRAINT [FK_Companies_Municipalities]
GO
ALTER TABLE [dbo].[Companies]  WITH CHECK ADD  CONSTRAINT [FK_Companies_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Companies] CHECK CONSTRAINT [FK_Companies_Users]
GO
ALTER TABLE [dbo].[Issuse]  WITH CHECK ADD  CONSTRAINT [FK_Problems_Companies] FOREIGN KEY([CompaniesId])
REFERENCES [dbo].[Companies] ([Id])
GO
ALTER TABLE [dbo].[Issuse] CHECK CONSTRAINT [FK_Problems_Companies]
GO
ALTER TABLE [dbo].[Lincense]  WITH CHECK ADD  CONSTRAINT [FK_Lincense_Companies] FOREIGN KEY([CompaniesId])
REFERENCES [dbo].[Companies] ([Id])
GO
ALTER TABLE [dbo].[Lincense] CHECK CONSTRAINT [FK_Lincense_Companies]
GO
ALTER TABLE [dbo].[Municipalities]  WITH CHECK ADD  CONSTRAINT [FK_Municipalities_Cities] FOREIGN KEY([CitiesId])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[Municipalities] CHECK CONSTRAINT [FK_Municipalities_Cities]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1-active
2-request
3-stopped
9-delete
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CampanyAttachments', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1-active
2-not active
9-delete' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cities', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1-Not Compleate 
2-Confirm Phone
3-Requested
4-Accepted
5-Rejected
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Companies', @level2type=N'COLUMN',@level2name=N'Levels'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1-active
2-not active
3-stopped
4-admin
9-delete
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Companies', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1-active
2-not active
3-stopped
4-admin
9-delete
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lincense', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1-active
2-not active
9-delete' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Municipalities', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1-Add
2-Edit
3-Delete
4-ChangeStatus
5-Other' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transactions', @level2type=N'COLUMN',@level2name=N'Operations'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1-admin
2-Creator
3-service lead 
4-Clints

20-traning center 
40-instarcture
60-student

' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'UserType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1-active
2-not active
3-stopped
4-admin
9-delete
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Status'
GO
