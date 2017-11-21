CREATE TABLE [dbo].[Classroom](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoomNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Classroom] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Classroom] ON
INSERT [dbo].[Classroom] ([Id], [RoomNo]) VALUES (1, N'101')
INSERT [dbo].[Classroom] ([Id], [RoomNo]) VALUES (2, N'102')
INSERT [dbo].[Classroom] ([Id], [RoomNo]) VALUES (3, N'103')
INSERT [dbo].[Classroom] ([Id], [RoomNo]) VALUES (4, N'201')
INSERT [dbo].[Classroom] ([Id], [RoomNo]) VALUES (5, N'202')
INSERT [dbo].[Classroom] ([Id], [RoomNo]) VALUES (6, N'203')
SET IDENTITY_INSERT [dbo].[Classroom] OFF
/****** Object:  Table [dbo].[Semester]    Script Date: 10/24/2017 21:17:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Semester](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Semester] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Semester] ON
INSERT [dbo].[Semester] ([Id], [Name]) VALUES (1, N'Fall, 2015-2016')
INSERT [dbo].[Semester] ([Id], [Name]) VALUES (2, N'Spring, 2015-2016')
INSERT [dbo].[Semester] ([Id], [Name]) VALUES (3, N'Summer, 2015-2016')
INSERT [dbo].[Semester] ([Id], [Name]) VALUES (4, N'Fall, 2016-2017')
INSERT [dbo].[Semester] ([Id], [Name]) VALUES (5, N'Spring, 2016-2017')
INSERT [dbo].[Semester] ([Id], [Name]) VALUES (6, N'Summer, 2016-2017')
INSERT [dbo].[Semester] ([Id], [Name]) VALUES (7, N'Fall, 2017-2018')
INSERT [dbo].[Semester] ([Id], [Name]) VALUES (8, N'Spring, 2017-2018')
SET IDENTITY_INSERT [dbo].[Semester] OFF
/****** Object:  Table [dbo].[Grade]    Script Date: 10/24/2017 21:17:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Grade] ON
INSERT [dbo].[Grade] ([Id], [Name]) VALUES (1, N'A+')
INSERT [dbo].[Grade] ([Id], [Name]) VALUES (2, N'A')
INSERT [dbo].[Grade] ([Id], [Name]) VALUES (3, N'A-')
INSERT [dbo].[Grade] ([Id], [Name]) VALUES (4, N'B+')
INSERT [dbo].[Grade] ([Id], [Name]) VALUES (5, N'B')
INSERT [dbo].[Grade] ([Id], [Name]) VALUES (6, N'B-')
INSERT [dbo].[Grade] ([Id], [Name]) VALUES (7, N'C+')
INSERT [dbo].[Grade] ([Id], [Name]) VALUES (8, N'C')
INSERT [dbo].[Grade] ([Id], [Name]) VALUES (9, N'C-')
INSERT [dbo].[Grade] ([Id], [Name]) VALUES (10, N'D+')
INSERT [dbo].[Grade] ([Id], [Name]) VALUES (11, N'D')
INSERT [dbo].[Grade] ([Id], [Name]) VALUES (12, N'D-')
INSERT [dbo].[Grade] ([Id], [Name]) VALUES (13, N'F')
SET IDENTITY_INSERT [dbo].[Grade] OFF
/****** Object:  Table [dbo].[StudentResult]    Script Date: 10/24/2017 21:17:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentResult](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[GradeId] [int] NOT NULL,
 CONSTRAINT [PK_StudentResult] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 10/24/2017 21:17:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Designation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Designation] ON
INSERT [dbo].[Designation] ([Id], [Name]) VALUES (1, N'Lecturer')
INSERT [dbo].[Designation] ([Id], [Name]) VALUES (2, N'Asst. Professor')
INSERT [dbo].[Designation] ([Id], [Name]) VALUES (3, N'Associate Professor')
INSERT [dbo].[Designation] ([Id], [Name]) VALUES (4, N'Professor')
SET IDENTITY_INSERT [dbo].[Designation] OFF
/****** Object:  Table [dbo].[Department]    Script Date: 10/24/2017 21:17:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON
INSERT [dbo].[Department] ([Id], [Code], [Name]) VALUES (1, N'CSE', N'Computer Science and Engineering')
INSERT [dbo].[Department] ([Id], [Code], [Name]) VALUES (2, N'EEE', N'Electrical and Electronics Engineering')
INSERT [dbo].[Department] ([Id], [Code], [Name]) VALUES (4, N'BBA', N'Bachelor of Business Adminstration')
INSERT [dbo].[Department] ([Id], [Code], [Name]) VALUES (5, N'ENG', N'English Literature')
SET IDENTITY_INSERT [dbo].[Department] OFF
/****** Object:  Table [dbo].[Day]    Script Date: 10/24/2017 21:17:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Day](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Day] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Day] ON
INSERT [dbo].[Day] ([Id], [Name]) VALUES (1, N'Saturday')
INSERT [dbo].[Day] ([Id], [Name]) VALUES (2, N'Sunday')
INSERT [dbo].[Day] ([Id], [Name]) VALUES (3, N'Monday')
INSERT [dbo].[Day] ([Id], [Name]) VALUES (4, N'Tuesday')
INSERT [dbo].[Day] ([Id], [Name]) VALUES (5, N'Wendnessday')
INSERT [dbo].[Day] ([Id], [Name]) VALUES (6, N'Thursday')
INSERT [dbo].[Day] ([Id], [Name]) VALUES (7, N'Friday')
SET IDENTITY_INSERT [dbo].[Day] OFF
/****** Object:  Table [dbo].[Course]    Script Date: 10/24/2017 21:17:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Credit] [float] NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[SemesterId] [int] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[CourseAssignTo] [varchar](200) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON
INSERT [dbo].[Course] ([Id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [Status], [CourseAssignTo]) VALUES (1, N'CSE101', N'Programming Language 1', 3, N'', 1, 1, N'unassigned', N'')
INSERT [dbo].[Course] ([Id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [Status], [CourseAssignTo]) VALUES (3, N'CSE 103', N'Data Structure', 3.5, N'This is  a Test Type Data', 1, 1, N'unassigned', N'')
INSERT [dbo].[Course] ([Id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [Status], [CourseAssignTo]) VALUES (4, N'EEE 101', N'Electronic Device', 3, N'This is a test input', 2, 3, N'unassigned', N'')
INSERT [dbo].[Course] ([Id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [Status], [CourseAssignTo]) VALUES (5, N'BBA 101', N'Principal of Accounting', 1, N'This is a test input', 4, 2, N'unassigned', N'')
INSERT [dbo].[Course] ([Id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [Status], [CourseAssignTo]) VALUES (6, N'ENG 101', N'English Reading Skill and Public Speaking', 2, N'This is a test input', 5, 6, N'unassigned', N'')
INSERT [dbo].[Course] ([Id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [Status], [CourseAssignTo]) VALUES (9, N'ENG 102', N'English Writing Skill', 2, N'This is a test input', 5, 4, N'unassigned', N'')
INSERT [dbo].[Course] ([Id], [Code], [Name], [Credit], [Description], [DepartmentId], [SemesterId], [Status], [CourseAssignTo]) VALUES (14, N'BBA 1010', N'Business Math', 3.5, N'Business Math', 4, 1, N'unassigned', N'')
SET IDENTITY_INSERT [dbo].[Course] OFF
/****** Object:  Table [dbo].[Teacher]    Script Date: 10/24/2017 21:17:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Address] [varchar](200) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[ContactNo] [varchar](50) NOT NULL,
	[DesignationId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[Credit] [float] NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON
INSERT [dbo].[Teacher] ([Id], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [Credit]) VALUES (3, N'Abu Zafar', N'Dhanmondi', N'abuzafar@gmail.com', N'01719878787', 1, 1, 15)
INSERT [dbo].[Teacher] ([Id], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [Credit]) VALUES (4, N'Yousub Ali', N'Baridhara', N'yali@yahoo.com', N'01716656565', 3, 1, 10)
INSERT [dbo].[Teacher] ([Id], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [Credit]) VALUES (5, N'Biplob Kumar', N'Alipur', N'kumar@gmail.com', N'01919345465', 1, 1, 12)
INSERT [dbo].[Teacher] ([Id], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [Credit]) VALUES (7, N'Hasan Zaman', N'Bogra', N'hasanzaman@outlook.com', N'01655555555', 1, 4, 18)
INSERT [dbo].[Teacher] ([Id], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [Credit]) VALUES (9, N'Ayon Yasar', N'Rangpur', N'ayon@hotmail.com', N'0152222222', 3, 5, 13)
INSERT [dbo].[Teacher] ([Id], [Name], [Address], [Email], [ContactNo], [DesignationId], [DepartmentId], [Credit]) VALUES (10, N'Noor ALi', N'Mirpur', N'noorali@gmail.com', N'01711313131', 2, 2, 12)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
/****** Object:  Table [dbo].[Student]    Script Date: 10/24/2017 21:17:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[RegistrationNo] [varchar](50) NOT NULL,
	[ContactNo] [varchar](50) NOT NULL,
	[Address] [varchar](400) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[DepartmentId] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON
INSERT [dbo].[Student] ([Id], [Name], [Email], [RegistrationNo], [ContactNo], [Address], [CreatedAt], [DepartmentId]) VALUES (2, N'Jayed', N'jayed@gmail.com', N'CSE-2017-001', N'01523303030', N'Jhiltuli', CAST(0x0000A80C00000000 AS DateTime), 1)
INSERT [dbo].[Student] ([Id], [Name], [Email], [RegistrationNo], [ContactNo], [Address], [CreatedAt], [DepartmentId]) VALUES (6, N'Tashin', N'tashin@gmail.com', N'EEE-2017-001', N'01919191919', N'Alipur', CAST(0x0000A80C00000000 AS DateTime), 2)
INSERT [dbo].[Student] ([Id], [Name], [Email], [RegistrationNo], [ContactNo], [Address], [CreatedAt], [DepartmentId]) VALUES (8, N'Chayon', N'chayon@ymail.com', N'EEE-2017-002', N'0191999999', N'Dhaka', CAST(0x0000A80D00000000 AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Student] OFF
/****** Object:  Table [dbo].[EnrollCourseTeacher]    Script Date: 10/24/2017 21:17:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EnrollCourseTeacher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[TeacherId] [int] NOT NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_EnrollCourseTeacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EnrollCourseTeacher] ON
INSERT [dbo].[EnrollCourseTeacher] ([Id], [CourseId], [TeacherId], [Status]) VALUES (47, 3, 4, N'unassigned')
SET IDENTITY_INSERT [dbo].[EnrollCourseTeacher] OFF
/****** Object:  Table [dbo].[AllocateClassroom]    Script Date: 10/24/2017 21:17:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AllocateClassroom](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[ClassroomId] [int] NOT NULL,
	[DayId] [int] NOT NULL,
	[FromTime] [int] NOT NULL,
	[ToTime] [int] NOT NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentEnroleCourse]    Script Date: 10/24/2017 21:17:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentEnroleCourse](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_StudentEnroleCourse] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_EnroledCourseAndTeacher]    Script Date: 10/24/2017 21:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_EnroledCourseAndTeacher]
AS
(SELECT c.Id AS CourseID, c.Name AS CourseName, t.Name AS TeacherName, t.Id AS TeacherID FROM dbo.Course c
INNER JOIN dbo.EnrollCourseTeacher ec ON c.Id = ec.CourseId
INNER JOIN dbo.Teacher t ON t.Id = ec.TeacherId
)
GO
/****** Object:  View [dbo].[vw_CourseSchedule2]    Script Date: 10/24/2017 21:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vw_CourseSchedule2] AS

SELECT     c.Code, c.Name AS CourseName, r.RoomNo, ac.FromTime, ac.ToTime,ac.Status AllocationStatus, dy.Name AS DayName, d.Code AS DeptCode
FROM         dbo.Course AS c LEFT OUTER JOIN
                      dbo.AllocateClassroom AS ac ON c.Id = ac.CourseId LEFT OUTER JOIN
                      dbo.Day AS dy ON dy.Id = ac.DayId LEFT OUTER JOIN
                      dbo.Classroom AS r ON ac.ClassroomId = r.Id LEFT OUTER JOIN
                      dbo.Department AS d ON d.Id = c.DepartmentId
GO
/****** Object:  View [dbo].[vw_CourseSchedual]    Script Date: 10/24/2017 21:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_CourseSchedual] AS (

select c.Code, c.Name AS CourseName, r.RoomNo, ac.FromTime,  ac.ToTIme, dy.Name AS [DayName], d.Code AS DeptCode  from Course c
left join AllocateClassRoom ac on c.Id=ac.CourseId
LEFT JOIN dbo.[Day] dy ON dy.Id = ac.DayId
left join Classroom r on ac.ClassroomId=r.Id
LEFT JOIN dbo.Department d ON d.Id = c.DepartmentId
)
GO
/****** Object:  ForeignKey [FK_Course_Department]    Script Date: 10/24/2017 21:17:34 ******/
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Department]
GO
/****** Object:  ForeignKey [FK_Course_Semester]    Script Date: 10/24/2017 21:17:34 ******/
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Semester] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semester] ([Id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Semester]
GO
/****** Object:  ForeignKey [FK_Teacher_Department]    Script Date: 10/24/2017 21:17:34 ******/
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Department]
GO
/****** Object:  ForeignKey [FK_Teacher_Designation]    Script Date: 10/24/2017 21:17:34 ******/
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Designation] FOREIGN KEY([DesignationId])
REFERENCES [dbo].[Designation] ([Id])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Designation]
GO
/****** Object:  ForeignKey [FK_Student_Department]    Script Date: 10/24/2017 21:17:34 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Department]
GO
/****** Object:  ForeignKey [FK_EnrollCourseTeacher_Course]    Script Date: 10/24/2017 21:17:34 ******/
ALTER TABLE [dbo].[EnrollCourseTeacher]  WITH CHECK ADD  CONSTRAINT [FK_EnrollCourseTeacher_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[EnrollCourseTeacher] CHECK CONSTRAINT [FK_EnrollCourseTeacher_Course]
GO
/****** Object:  ForeignKey [FK_EnrollCourseTeacher_Teacher]    Script Date: 10/24/2017 21:17:34 ******/
ALTER TABLE [dbo].[EnrollCourseTeacher]  WITH CHECK ADD  CONSTRAINT [FK_EnrollCourseTeacher_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([Id])
GO
ALTER TABLE [dbo].[EnrollCourseTeacher] CHECK CONSTRAINT [FK_EnrollCourseTeacher_Teacher]
GO
/****** Object:  ForeignKey [FK_AllocateClassRoom_Classroom]    Script Date: 10/24/2017 21:17:34 ******/
ALTER TABLE [dbo].[AllocateClassroom]  WITH CHECK ADD  CONSTRAINT [FK_AllocateClassRoom_Classroom] FOREIGN KEY([ClassroomId])
REFERENCES [dbo].[Classroom] ([Id])
GO
ALTER TABLE [dbo].[AllocateClassroom] CHECK CONSTRAINT [FK_AllocateClassRoom_Classroom]
GO
/****** Object:  ForeignKey [FK_AllocateClassRoom_Course]    Script Date: 10/24/2017 21:17:34 ******/
ALTER TABLE [dbo].[AllocateClassroom]  WITH CHECK ADD  CONSTRAINT [FK_AllocateClassRoom_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[AllocateClassroom] CHECK CONSTRAINT [FK_AllocateClassRoom_Course]
GO
/****** Object:  ForeignKey [FK_AllocateClassRoom_Day]    Script Date: 10/24/2017 21:17:34 ******/
ALTER TABLE [dbo].[AllocateClassroom]  WITH CHECK ADD  CONSTRAINT [FK_AllocateClassRoom_Day] FOREIGN KEY([DayId])
REFERENCES [dbo].[Day] ([Id])
GO
ALTER TABLE [dbo].[AllocateClassroom] CHECK CONSTRAINT [FK_AllocateClassRoom_Day]
GO
/****** Object:  ForeignKey [FK_AllocateClassRoom_Department]    Script Date: 10/24/2017 21:17:34 ******/
ALTER TABLE [dbo].[AllocateClassroom]  WITH CHECK ADD  CONSTRAINT [FK_AllocateClassRoom_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[AllocateClassroom] CHECK CONSTRAINT [FK_AllocateClassRoom_Department]
GO
/****** Object:  ForeignKey [FK_StudentEnroleCourse_Department]    Script Date: 10/24/2017 21:17:34 ******/
ALTER TABLE [dbo].[StudentEnroleCourse]  WITH CHECK ADD  CONSTRAINT [FK_StudentEnroleCourse_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[StudentEnroleCourse] CHECK CONSTRAINT [FK_StudentEnroleCourse_Department]
GO
/****** Object:  ForeignKey [FK_StudentEnroleCourse_Student]    Script Date: 10/24/2017 21:17:34 ******/
ALTER TABLE [dbo].[StudentEnroleCourse]  WITH CHECK ADD  CONSTRAINT [FK_StudentEnroleCourse_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[StudentEnroleCourse] CHECK CONSTRAINT [FK_StudentEnroleCourse_Student]
GO
/****** Object:  ForeignKey [FK_StudentEnroleCourse_StudentEnroleCourse]    Script Date: 10/24/2017 21:17:34 ******/
ALTER TABLE [dbo].[StudentEnroleCourse]  WITH CHECK ADD  CONSTRAINT [FK_StudentEnroleCourse_StudentEnroleCourse] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[StudentEnroleCourse] CHECK CONSTRAINT [FK_StudentEnroleCourse_StudentEnroleCourse]
GO
