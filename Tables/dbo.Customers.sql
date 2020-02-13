CREATE TABLE [dbo].[Customers]
(
[CustomerID] [int] NOT NULL,
[CustomerName] [varchar] (70) COLLATE Latin1_General_CI_AS NULL,
[Adress] [varchar] (80) COLLATE Latin1_General_CI_AS NULL,
[City] [varchar] (40) COLLATE Latin1_General_CI_AS NULL,
[Region] [varchar] (40) COLLATE Latin1_General_CI_AS NULL,
[PostalCode] [varchar] (40) COLLATE Latin1_General_CI_AS NULL,
[Country] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[SendEmail] [varchar] (120) COLLATE Latin1_General_CI_AS NULL,
[Saluation] [varchar] (10) COLLATE Latin1_General_CI_AS NULL,
[EmailAdress] [varchar] (120) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customers] ADD CONSTRAINT [PK_Costumers] PRIMARY KEY CLUSTERED  ([CustomerID]) ON [PRIMARY]
GO
