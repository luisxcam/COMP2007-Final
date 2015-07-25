CREATE TABLE [dbo].[Armour]
(
	[ArmourId] INT NOT NULL PRIMARY KEY,
	[Name] VARCHAR(50),
	[ArmourType] VARCHAR(50),
	[JobSpecific] VARCHAR(50),
	[DefenseRate] INT,
	[MagicDefense] INT,
	[Weight] INT,
	[Attribute] VARCHAR(50),
	[Enchantment] VARCHAR(50),
	[MonetaryValue] INT,
	[Rarity] VARCHAR(50),
)