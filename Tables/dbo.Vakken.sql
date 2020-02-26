CREATE TABLE [dbo].[Vakken]
(
[vakID] [int] NOT NULL IDENTITY(1, 1),
[docentID] [int] NOT NULL,
[vak] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Vakken] ADD CONSTRAINT [PK_Vakken] PRIMARY KEY CLUSTERED  ([vakID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Vakken] ADD CONSTRAINT [FK_Vakken_Docenten] FOREIGN KEY ([docentID]) REFERENCES [dbo].[Docenten] ([docentID])
GO
