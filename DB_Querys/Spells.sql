CREATE TABLE [dbo].[Spells]
(
	[SpellsId] INT NOT NULL PRIMARY KEY,
	[CharClass] VARCHAR(50) NOT NULL,
	[Name] VARCHAR(50),
	[Description] VARCHAR(400),
	[Attribute] VARCHAR(50),
	[CharType] VARCHAR(50),
	[Rate] INT,
	[Efficiency] INT,
	[ManaRequired] INT,
	[ChantingTime] INT
)