-- ========================================================
-- Create table OHLC
-- OHLC stands for any data contains following information:
-- Open Price
-- High Price
-- Low Price
-- Close Price
-- Trade Volume
-- Trade DateTime
-- ========================================================
USE TAT_Database
GO

IF OBJECT_ID('dbo.OHLC', 'U') IS NOT NULL
  DROP TABLE dbo.OHLC
GO

CREATE TABLE dbo.OHLC
(
	MarketID int NOT NULL, 
	Code VARCHAR(25) NOT NULL, 
	TradeDateTime datetime NOT NULL,
	OpenPrice MONEY NOT NULL,
	HighPrice MONEY NOT NULL,
	LowPrice MONEY NOT NULL,
	ClosingPrice MONEY NOT NULL,
	Volume BIGINT NOT NULL,
    CONSTRAINT FK_MARKET_OHLC FOREIGN KEY (MarketID) REFERENCES Market (MarketID)
)
GO
