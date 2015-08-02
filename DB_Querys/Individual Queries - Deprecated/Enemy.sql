CREATE TABLE [dbo].[Enemy]
(
	[EnemyId] INT NOT NULL PRIMARY KEY,
	[Name] VARCHAR(50) NOT NULL,
	[CharLevel] INT,
	[Race] VARCHAR(50),
	[CharClass] VARCHAR(50),
	[HP] INT, 
	[Mana] INT,
	[ArmourRate] INT,
	[WeaponDamage] INT,
	[MagicAttack] INT,
	[MagicDefense] INT,
	[Speed] INT
);