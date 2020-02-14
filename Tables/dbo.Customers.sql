CREATE TABLE [dbo].[Customers]
(
[CustomerID] [int] NOT NULL IDENTITY(1, 1),
[CustomerName] [varchar] (70) COLLATE Latin1_General_CI_AS NOT NULL,
[Adress] [varchar] (80) COLLATE Latin1_General_CI_AS NOT NULL,
[City] [varchar] (40) COLLATE Latin1_General_CI_AS NOT NULL,
[Region] [varchar] (40) COLLATE Latin1_General_CI_AS NOT NULL,
[PostalCode] [varchar] (40) COLLATE Latin1_General_CI_AS NOT NULL,
[Country] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[SendEmail] [varchar] (120) COLLATE Latin1_General_CI_AS NOT NULL,
[Saluation] [varchar] (10) COLLATE Latin1_General_CI_AS NOT NULL,
[EmailAdress] [varchar] (120) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customers] ADD CONSTRAINT [PK_Costumers] PRIMARY KEY CLUSTERED  ([CustomerID]) ON [PRIMARY]
GO
