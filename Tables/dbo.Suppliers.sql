CREATE TABLE [dbo].[Suppliers]
(
[SupplierID] [int] NOT NULL,
[CompanyName] [varchar] (100) COLLATE Latin1_General_CI_AS NOT NULL,
[ContactName] [varchar] (100) COLLATE Latin1_General_CI_AS NOT NULL,
[Adress] [varchar] (200) COLLATE Latin1_General_CI_AS NOT NULL,
[City] [varchar] (100) COLLATE Latin1_General_CI_AS NOT NULL,
[Region] [varchar] (100) COLLATE Latin1_General_CI_AS NOT NULL,
[PostalCode] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[Country] [varchar] (100) COLLATE Latin1_General_CI_AS NOT NULL,
[Phone] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Suppliers] ADD CONSTRAINT [PK__Supplier__4BE66694C320D69A] PRIMARY KEY CLUSTERED  ([SupplierID]) ON [PRIMARY]
GO
