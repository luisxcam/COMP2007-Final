CREATE TABLE [dbo].[Items]
(
	[ItemId] INT NOT NULL PRIMARY KEY,
	[Name] VARCHAR(50),
	[Description] VARCHAR(400),
	[MonetaryValue] INT,
	[Weight] INT,
);