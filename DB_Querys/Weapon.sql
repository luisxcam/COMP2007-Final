CREATE TABLE [dbo].[Weapon]
(
	[WeaponId] INT NOT NULL PRIMARY KEY,
	[Name] VARCHAR(50),
	[WeaponType] VARCHAR(50),
	[JobSpecific] VARCHAR(50),
	[AttackRate] INT,
	[MagicAttack] INT,
	[Weight] INT,
	[Attribute] VARCHAR(50),
	[Enchantment] VARCHAR(50),
	[MonetaryValue] INT,
	[Rarity] VARCHAR(50)
)