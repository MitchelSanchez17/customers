CREATE TABLE [dbo].[Orders]
(
[OrderID] [int] NOT NULL IDENTITY(1, 1),
[CustomerID] [int] NOT NULL,
[SalesPerson] [varchar] (100) COLLATE Latin1_General_CI_AS NOT NULL,
[OrderDate] [date] NOT NULL,
[ShipName] [varchar] (250) COLLATE Latin1_General_CI_AS NOT NULL,
[ShipAdress] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[ShipCity] [varchar] (70) COLLATE Latin1_General_CI_AS NOT NULL,
[ShipRegion] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[ShipPostalCode] [varchar] (80) COLLATE Latin1_General_CI_AS NOT NULL,
[ShipCountry] [varchar] (60) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [PK__Orders__C3905BAF4E43D1A3] PRIMARY KEY CLUSTERED  ([OrderID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [FK_Orders_Customers] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID])
GO
