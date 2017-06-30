USE [master]
GO

IF NOT EXISTS ( SELECT name FROM sys.databases WHERE name = N'TAT_Database')
BEGIN
	IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'TAT_Database')
	EXECUTE ('Create Schema [TAT_Dabase] AUTHORIZATION [dbo]')
END

GO
