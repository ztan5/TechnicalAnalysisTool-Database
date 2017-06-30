-- =========================================
-- Create table MarketType
-- =========================================
USE TAT_Database
GO

IF OBJECT_ID('dbo.MarketType', 'U') IS NOT NULL
  DROP TABLE dbo.MarketType
GO

CREATE TABLE dbo.MarketType
(
	MarketTypeID INT NOT NULL, 
	MarketTypeName VARCHAR(20) NULL, 
    CONSTRAINT [PK_MarketType] PRIMARY KEY (MarketTypeID)
)
GO
