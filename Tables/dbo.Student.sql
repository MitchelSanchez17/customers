CREATE TABLE [dbo].[Student]
(
[studentID] [int] NOT NULL IDENTITY(1, 1),
[docentID] [int] NOT NULL,
[voornaam] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[achternaam] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[tussenvoegsel] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[studentNummer] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[cohort] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Student] ADD CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED  ([studentID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Student] ADD CONSTRAINT [FK_Student_Docenten] FOREIGN KEY ([docentID]) REFERENCES [dbo].[Docenten] ([docentID])
GO
