-- =========================================
-- Insert MarketType Data
-- =========================================

USE [TAT_Database] 
GO

SET XACT_ABORT ON
BEGIN TRANSACTION

IF NOT EXISTS (SELECT 1 FROM [dbo].[MarketType] WITH (NOLOCK) WHERE MarketTypeID = 1)
	INSERT INTO [dbo].[MarketType] ([MarketTypeID], [MarketTypeName])
	VALUES (1, N'Stock')
ELSE
	Update [dbo].[MarketType]
	SET [MarketTypeName] = N'Stock'
	WHERE [MarketTypeID] = 1

IF NOT EXISTS (SELECT 1 FROM [dbo].[MarketType] WITH (NOLOCK) WHERE MarketTypeID = 2)
	INSERT INTO [dbo].[MarketType] ([MarketTypeID], [MarketTypeName])
	VALUES (2, N'Commodity')
ELSE
	Update [dbo].[MarketType]
	SET [MarketTypeName] = N'Commodity'
	WHERE [MarketTypeID] = 2

IF NOT EXISTS (SELECT 1 FROM [dbo].[MarketType] WITH (NOLOCK) WHERE MarketTypeID = 3)
	INSERT INTO [dbo].[MarketType] ([MarketTypeID], [MarketTypeName])
	VALUES (3, N'Forex')
ELSE
	Update [dbo].[MarketType]
	SET [MarketTypeName] = N'Forex'
	WHERE [MarketTypeID] = 3

IF NOT EXISTS (SELECT 1 FROM [dbo].[MarketType] WITH (NOLOCK) WHERE MarketTypeID = 4)
	INSERT INTO [dbo].[MarketType] ([MarketTypeID], [MarketTypeName])
	VALUES (4, N'Indices')
ELSE
	Update [dbo].[MarketType]
	SET [MarketTypeName] = N'Indices'
	WHERE [MarketTypeID] = 4

IF NOT EXISTS (SELECT 1 FROM [dbo].[MarketType] WITH (NOLOCK) WHERE MarketTypeID = 5)
	INSERT INTO [dbo].[MarketType] ([MarketTypeID], [MarketTypeName])
	VALUES (5, N'ETF')
ELSE
	Update [dbo].[MarketType]
	SET [MarketTypeName] = N'ETF'
	WHERE [MarketTypeID] = 5

IF NOT EXISTS (SELECT 1 FROM [dbo].[MarketType] WITH (NOLOCK) WHERE MarketTypeID = 6)
	INSERT INTO [dbo].[MarketType] ([MarketTypeID], [MarketTypeName])
	VALUES (6, N'Bond')
ELSE
	Update [dbo].[MarketType]
	SET [MarketTypeName] = N'Bond'
	WHERE [MarketTypeID] = 6

-- commit
COMMIT TRANSACTION
SET XACT_ABORT OFF
GO