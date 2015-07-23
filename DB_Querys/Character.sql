CREATE TABLE [dbo].[Character]
(
	[CharacterId] VARCHAR(50) NOT NULL PRIMARY KEY,
	[Username] VARCHAR(50) NOT NULL,
	[WeaponId] INT,
	[Armour] INT,
	[CharClass] VARCHAR(30),
	[CharacterName] VARCHAR(100),
	[CharLevel] INT,
	[Gender] CHAR, 
	[HP] INT, 
	[Mana] INT,
	[Strength] INT,
	[Dexterity] INT,
	[Constitution] INT,
	[Intelligence] INT, 
	[Wisdom] INT,
	[Charisma] INT,
	[SkillPoints] INT,
	[StatPoints] INT,
	[Speed] INT,
	[Experience] INT,
	[CarryWeight] INT
)