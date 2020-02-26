CREATE TABLE [dbo].[Docenten]
(
[docentID] [int] NOT NULL IDENTITY(1, 1),
[docentNaam] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Docenten] ADD CONSTRAINT [PK_Docenten] PRIMARY KEY CLUSTERED  ([docentID]) ON [PRIMARY]
GO
