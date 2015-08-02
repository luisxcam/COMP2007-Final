CREATE TABLE [dbo].[Spells]
(
	[SpellsId] INT NOT NULL PRIMARY KEY,
	[Name] VARCHAR(50),
	[Description] VARCHAR(400),
	[CharClass] VARCHAR(50),
	[Attribute] VARCHAR(50),
	[Rate] INT,
	[Efficiency] INT,
	[ManaRequired] INT,
	[ChantingTime] INT,
);