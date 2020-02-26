CREATE TABLE [dbo].[Cijfers]
(
[studentID] [int] NOT NULL,
[vakID] [int] NOT NULL,
[cijferID] [int] NOT NULL IDENTITY(1, 1),
[cijfer] [decimal] (18, 0) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cijfers] ADD CONSTRAINT [PK_Cijfers_1] PRIMARY KEY CLUSTERED  ([studentID], [vakID], [cijferID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cijfers] ADD CONSTRAINT [FK_Cijfers_Student] FOREIGN KEY ([studentID]) REFERENCES [dbo].[Student] ([studentID])
GO
ALTER TABLE [dbo].[Cijfers] ADD CONSTRAINT [FK_Cijfers_Vakken] FOREIGN KEY ([vakID]) REFERENCES [dbo].[Vakken] ([vakID])
GO
