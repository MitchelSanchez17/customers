CREATE TABLE [dbo].[OrderDetails]
(
[OrderID] [int] NOT NULL IDENTITY(1, 1),
[ProductID] [int] NOT NULL,
[UnitPrice] [money] NOT NULL,
[Quantity] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderDetails] ADD CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED  ([OrderID], [ProductID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderDetails] ADD CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] ADD CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ProductID])
GO
