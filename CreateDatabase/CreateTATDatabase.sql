-- ==================================================
-- Create database for Technical Analysis Tool (TAT)
-- =================================================
USE [master]
GO

IF  NOT EXISTS (
	SELECT name 
		FROM sys.databases 
		WHERE name = N'TAT_Database'
)
BEGIN
CREATE DATABASE [TAT_Database] ON PRIMARY
	(NAME = N'TAT_Database',
	FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\TAT_Database.MDF',
	SIZE = 5MB, MAXSIZE = UNLIMITED, FILEGROWTH = 10%)

	LOG ON
	(NAME = N'TAT_Database_Log',
	FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\TAT_Database.LDF',
	SIZE = 10MB, MAXSIZE = UNLIMITED, FILEGROWTH = 5%)
END
ELSE
    RAISERROR( N'There is an existing TAT_Database on this server',16,3)

GO