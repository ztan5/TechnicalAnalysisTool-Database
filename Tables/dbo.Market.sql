-- =========================================
-- Create table Market
-- =========================================
USE TAT_Database
GO

IF OBJECT_ID('dbo.Market', 'U') IS NOT NULL
  DROP TABLE dbo.Market
GO

CREATE TABLE dbo.Market
(
	MarketTypeID INT NOT NULL,
	MarketID INT NOT NULL, 
	MarketName VARCHAR(20) NULL, 
    CONSTRAINT PK_Market PRIMARY KEY (MarketID),
	CONSTRAINT FK_Market_MarketType FOREIGN KEY (MarketTypeID) references MarketType (MarketTypeID)
)
GO
