CREATE TABLE [dbo].[Products]
(
[ProductID] [int] NOT NULL IDENTITY(1, 1),
[SupplierID] [int] NOT NULL,
[ProductName] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[UnitPrice] [money] NOT NULL,
[UnitsInStock] [int] NOT NULL,
[UnitsOnOrder] [int] NOT NULL,
[QuantityPerUnit] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED  ([ProductID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY ([SupplierID]) REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
