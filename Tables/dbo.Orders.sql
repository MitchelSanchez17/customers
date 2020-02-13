CREATE TABLE [dbo].[Orders]
(
[OrderID] [int] NOT NULL,
[SalesPerson] [varchar] (100) COLLATE Latin1_General_CI_AS NULL,
[OrderDate] [date] NULL,
[CustomerID] [int] NULL,
[ShipName] [varchar] (250) COLLATE Latin1_General_CI_AS NULL,
[ShipAdress] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[ShipCity] [varchar] (70) COLLATE Latin1_General_CI_AS NULL,
[ShipRegion] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[ShipPostalCode] [varchar] (80) COLLATE Latin1_General_CI_AS NULL,
[ShipCountry] [varchar] (60) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [PK__Orders__C3905BAF4E43D1A3] PRIMARY KEY CLUSTERED  ([OrderID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [FK_CustomerOrders] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID])
GO
