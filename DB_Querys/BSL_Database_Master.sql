--Master Query
--README: After creation of everything, delete the constraints located on the Characters and Campaign tables created by the TRANSACT SQL. // A way to get them is by adding data to Users, Characters, and Campaign tables. Then try deleting the user, the error sent back by the server will contain the name of the constraints.

/*TABLE CREATION*/
-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[Armour]
(
	[ArmourId] INT NOT NULL IDENTITY (1, 1),
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
	PRIMARY KEY CLUSTERED ([ArmourId] ASC)
);

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[Campaign]
(
	[CampaignId] INT NOT NULL IDENTITY (1, 1),
	[UsernameId] INT NOT NULL,
	[Title] VARCHAR(50),
	[Description] VARCHAR(400),
	[CreationDate] DATE,
	[NextSessionDate] DATETIME,
	PRIMARY KEY CLUSTERED ([CampaignId] ASC)
);

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[CampaignEnemies]
(
	[CampaignEnemyId] INT NOT NULL IDENTITY(1,1),
	[CampaignId] INT NOT NULL,
	[EnemyId] INT NOT NULL,
	PRIMARY KEY CLUSTERED ([CampaignEnemyId]),
	CONSTRAINT [CampaignEnemiesUnique] UNIQUE ([CampaignId],[EnemyId]),
);

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[CampaignNPC]
(
	[CampaignNPCId] INT NOT NULL IDENTITY(1,1),
	[CampaignId] INT NOT NULL,
	[NPCId] INT NOT NULL,
	PRIMARY KEY CLUSTERED ([CampaignNPCId]),
	CONSTRAINT [CampaignNPCUnique] UNIQUE ([CampaignId],[NPCId])
);


-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[CampaignPlayers]
(
	[CampaignPlayerId] INT NOT NULL IDENTITY(1,1),
	[CharacterId] INT NOT NULL,
	[CampaignId] INT NOT NULL,
	PRIMARY KEY CLUSTERED ([CampaignPlayerId]),
	CONSTRAINT [CampaignPlayersUnique] UNIQUE ([CharacterId],[CampaignId])
);

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[Characters] (
    [CharacterId]   INT  NOT NULL IDENTITY (1, 1),
    [UsernameId]    INT  NOT NULL,
    [WeaponId]      INT           NULL,
    [ArmourId]      INT           NULL,
    [CharacterName] VARCHAR (100) NULL,
    [CharClass]     VARCHAR (50)  NULL,
    [CharLevel]     INT           DEFAULT 0,
    [Gender]        CHAR (1)      NULL,
    [HP]            INT           NULL,
    [Mana]          INT           NULL,
    [Strength]      INT           NULL,
    [Dexterity]     INT           NULL,
    [Constitution]  INT           NULL,
    [Intelligence]  INT           NULL,
    [Wisdom]        INT           NULL,
    [Charisma]      INT           NULL,
    [SkillPoints]   INT           DEFAULT 0,
    [StatPoints]    INT           DEFAULT 0,
    [Speed]         INT           NULL,
	[Gold]			INT			  DEFAULT 0,
    [Experience]    INT           DEFAULT 0,
    [CarryWeight]   INT           NULL,
    PRIMARY KEY CLUSTERED ([CharacterId] ASC),
);

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[CharacterItems] (
    [CharacterItemId] INT NOT NULL IDENTITY(1,1),
	[CharacterId] INT NOT NULL,
	[ItemId]      INT          NOT NULL,
    [Quantity]    INT          DEFAULT 0,
    PRIMARY KEY CLUSTERED ([CharacterItemId]),
	CONSTRAINT [CharacterItemsUnique] UNIQUE ([CharacterId],[ItemId])
);

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[CharacterSkills]
(
	[CharacterSkillsId] INT NOT NULL IDENTITY(1,1),
	[CharacterId] INT NOT NULL,
	[SkillId] INT NOT NULL,
	PRIMARY KEY CLUSTERED ([CharacterSkillsId]),
	CONSTRAINT [CharacterSkillsUnique] UNIQUE ([CharacterId],[SkillId])
);

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[CharacterSpells]
(
	[CharacterSpellsId] INT NOT NULL IDENTITY(1,1),
	[CharacterId] INT NOT NULL,
	[SpellId] INT NOT NULL,
	PRIMARY KEY CLUSTERED ([CharacterSpellsId]),
	CONSTRAINT [CharacterSpellsUnique] UNIQUE ([CharacterId],[SpellId])
);

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[Enemy]
(
	[EnemyId] INT NOT NULL IDENTITY (1, 1),
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
	[Speed] INT,
	PRIMARY KEY CLUSTERED ([EnemyId] ASC)
);

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[Items]
(
	[ItemId] INT NOT NULL IDENTITY (1, 1),
	[Name] VARCHAR(50),
	[Description] VARCHAR(400),
	[MonetaryValue] INT,
	[Weight] INT,
	PRIMARY KEY CLUSTERED ([ItemId] ASC)
);

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[NPC]
(
	[NPCId] INT NOT NULL IDENTITY (1, 1),
	[Name] VARCHAR(50),
	[Description] VARCHAR(400),
	[Role] VARCHAR(50),
	PRIMARY KEY CLUSTERED ([NPCId] ASC)
);

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[Skill]
(
	[SkillId] INT NOT NULL IDENTITY (1, 1),
	[Name] VARCHAR(50),
	[Description] VARCHAR(400),
	[CharClass] VARCHAR(50),
	[Rate] INT,
	[Efficiency] INT,
	[UsesPerDay] INT,
	PRIMARY KEY CLUSTERED ([SkillId] ASC)
);

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[Spells]
(
	[SpellsId] INT NOT NULL IDENTITY (1, 1),
	[Name] VARCHAR(50),
	[Description] VARCHAR(400),
	[CharClass] VARCHAR(50),
	[Attribute] VARCHAR(50),
	[Rate] INT,
	[Efficiency] INT,
	[ManaRequired] INT,
	[ChantingTime] INT,
	PRIMARY KEY CLUSTERED ([SpellsId] ASC)
);

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[Users]
(
	[UsernameId] INT NOT NULL IDENTITY (1, 1),
	[Username] VARCHAR(50) NOT NULL UNIQUE,
	[FirstName] VARCHAR(50) NOT NULL,
	[LastName] VARCHAR(50) NOT NULL,
	[Password] VARCHAR(128) NOT NULL,
	[Email] VARCHAR(100) NOT NULL UNIQUE,
	PRIMARY KEY CLUSTERED ([UsernameId] ASC)
);

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[Weapon]
(
	[WeaponId] INT NOT NULL IDENTITY (1, 1),
	[Name] VARCHAR(50),
	[WeaponType] VARCHAR(50),
	[JobSpecific] VARCHAR(50),
	[AttackRate] INT,
	[MagicAttack] INT,
	[Weight] INT,
	[Attribute] VARCHAR(50),
	[Enchantment] VARCHAR(50),
	[MonetaryValue] INT,
	[Rarity] VARCHAR(50),
	PRIMARY KEY CLUSTERED ([WeaponId] ASC)
);

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
/*CONSTRAINTS*/
ALTER TABLE [dbo].[CampaignEnemies]
ADD CONSTRAINT [CampaingDeleted_DeleteEnemies] FOREIGN KEY (CampaignId) REFERENCES [dbo].[Campaign](CampaignId) ON DELETE CASCADE;

ALTER TABLE [dbo].[CampaignEnemies]
ADD CONSTRAINT [EnemyDeleted_DeleteEnemyFromCampaign] FOREIGN KEY (EnemyID) REFERENCES [dbo].[Enemy](EnemyID) ON DELETE CASCADE;

ALTER TABLE [dbo].[CampaignNPC]
ADD CONSTRAINT [CampaignDeleted_DeleteNPCs] FOREIGN KEY (CampaignId) REFERENCES [dbo].[Campaign](CampaignId) ON DELETE CASCADE;

ALTER TABLE [dbo].[CampaignNPC]
ADD CONSTRAINT [NPCDeleted_DeleteFromCampaign] FOREIGN KEY (NPCId) REFERENCES [dbo].[NPC](NPCId) ON DELETE CASCADE;

ALTER TABLE [dbo].[CampaignPlayers]
ADD CONSTRAINT [CampaignDeleted_DeletePlayers] FOREIGN KEY (CampaignId) REFERENCES [dbo].[Campaign](CampaignId) ON DELETE CASCADE;
	
ALTER TABLE [dbo].[CampaignPlayers]
ADD CONSTRAINT [CharactedDeleted_DeleteFromCampaign] FOREIGN KEY (CharacterId) REFERENCES [dbo].[Characters](CharacterId) ON DELETE CASCADE;

ALTER TABLE [dbo].[Characters]
ADD CONSTRAINT [ArmourDeleted_DeleteFromCharacter] FOREIGN KEY ([ArmourId]) REFERENCES [dbo].[Armour] ([ArmourId]) ON DELETE SET NULL;

--Had issues with this one, we are going to have to do it manually on the app
ALTER TABLE [dbo].[Characters]
--ADD CONSTRAINT [UserDeleted_DeleteCharacter] FOREIGN KEY ([UsernameId]) REFERENCES [dbo].[Users] ([UsernameId]) ON DELETE CASCADE;
ADD CONSTRAINT [UserID_On_Characters] FOREIGN KEY ([UsernameId]) REFERENCES [dbo].[Users] ([UsernameId]);
--Continue

--Had issues with this one, we are going to have to do it manually on the app
ALTER TABLE [dbo].[Campaign]
--ADD CONSTRAINT [UsernameIdDeleted_DeleteCampaign] FOREIGN KEY (UsernameId) REFERENCES [dbo].[Users](UsernameId) ON DELETE CASCADE;
ADD CONSTRAINT [UserID_On_Campaign] FOREIGN KEY ([UsernameId]) REFERENCES [dbo].[Users] ([UsernameId]);
--Continue

--CONSTRAINTS DELETE
/*
ALTER TABLE [dbo].[Characters]
DROP CONSTRAINT [UserID_On_Characters];
ALTER TABLE [dbo].[Campaign]
DROP CONSTRAINT [UserID_On_Campaign];
*/

ALTER TABLE [dbo].[Characters]
ADD CONSTRAINT [WeaponDeleted_DeleteFromCharacter] FOREIGN KEY ([WeaponId]) REFERENCES [dbo].[Weapon] ([WeaponId]) ON DELETE SET NULL;

ALTER TABLE [dbo].[CharacterItems]
ADD CONSTRAINT [CharacterDeleted_DeleteFromCharItems] FOREIGN KEY ([CharacterId]) REFERENCES [dbo].[Characters] ([CharacterId]) ON DELETE CASCADE;

ALTER TABLE [dbo].[CharacterItems]
ADD CONSTRAINT [ItemDeleted_DeleteFromCharItems] FOREIGN KEY ([ItemId]) REFERENCES [dbo].[Items] ([ItemId]) ON DELETE CASCADE;

ALTER TABLE [dbo].[CharacterSkills]
ADD CONSTRAINT [SkillDeteled_DeleteFromCharSkills] FOREIGN KEY (SkillId) REFERENCES [dbo].[Skill](SkillId) ON DELETE CASCADE;

ALTER TABLE [dbo].[CharacterSkills]
ADD CONSTRAINT [CharacterDeleted_DeleteFromCharSkills] FOREIGN KEY (CharacterId) REFERENCES [dbo].[Characters](CharacterId) ON DELETE CASCADE;

ALTER TABLE [dbo].[CharacterSpells]
ADD CONSTRAINT [SpellDeleted_DeleteFromCharSpells] FOREIGN KEY (SpellId) REFERENCES [dbo].[Spells](SpellsId) ON DELETE CASCADE;

ALTER TABLE [dbo].[CharacterSpells]
ADD CONSTRAINT [CharacterDeleted_DeleteFromCharSpell] FOREIGN KEY (CharacterId) REFERENCES [dbo].[Characters](CharacterId) ON DELETE CASCADE;

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
/*TRIGGERS - Important: On VS2013 you can only declare one TRIGGER at a time*/
CREATE TRIGGER [DeleteUserData_FromCharacters] ON [dbo].[Users] FOR DELETE
AS
BEGIN
	--Grab old value for deletion
	DECLARE @OldId INT;
	SELECT @OldId = UsernameId FROM deleted;

	--Delete from Campaign table
	DELETE FROM [dbo].[Characters]
	WHERE [dbo].[Characters].[UsernameId] = @OldId;
END

CREATE TRIGGER [DeleteUserData_FromCampaign] ON [dbo].[Users] AFTER DELETE
AS
BEGIN
	--Grab old value for deletion
	DECLARE @OldId INT;
	SELECT @OldId = UsernameId FROM deleted;

	--Delete from Campaign table
	DELETE FROM [dbo].[Campaign]
	WHERE [dbo].[Campaign].[UsernameId] = @OldId;
END

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
/*SAMPLE DATA*/
INSERT INTO [dbo].[Armour] VALUES('ChainMail','Heavy Armour','Warrior',75,0,50,'none','none',150,'none'),('ChainMail2','Heavy Armour','Warrior',75,0,50,'none','none',150,'none');

INSERT INTO [dbo].[Enemy] VALUES('Lioness',20,'Beast','Wild Beast',200,0,0,40,0,0,120),('Mercenary',25,'Human','Humanoid',150,20,50,35,10,10,80);

INSERT INTO [dbo].[Items] VALUES('Potion','Healing Potion',20,10),('Dungeon Key','Opens doors in the dungeon',0,1);

INSERT INTO [dbo].[NPC] VALUES('Mark','He is nice','Be nice'),('Helena','She is my girlfriend','Be my GF');

INSERT INTO [dbo].[Skill] VALUES ('Slash','Pokemon kind of attack','Warrior',10,20,5),('Spinning Attack','He likes dancing','Warrior',10,20,5);

INSERT INTO [dbo].[Spells] VALUES ('Fire Ball','Duh...','Black Mage','Fire',10,10,10,10),('Heal','Again, duh...','White Mage','Light',10,10,10,10);

INSERT INTO [dbo].[Users] VALUES('Blaine','Blaine','Parr','stuff','parr@parr.com'),('Luis','Luis','Acevedo','things','asdas@adas.com'),('Stophon','Steve','Ciprian','monicalewisky','clint@rocks.ca');

INSERT INTO [dbo].[Weapon] VALUES('The Torn','Sword','Warrior',20,0,20,'none','none',60,'none'),('Magnus Staff','Staff','Black Mage',1,50,5,'Dark','+2 Int',1200,'Very rare');

Insert into dbo.Characters values((select distinct usernameid from dbo.Users where Username = 'Blaine'),NULL,NULL,'Blainonidas','Wimpy',10,'M',100,80,10,10,10,10,10,10,10,10,10,10,10,10),((select distinct usernameid from dbo.Users where Username = 'Luis'),NULL,NULL,'Luis1','Master',100,'M',100,80,10,10,10,10,10,10,10,10,10,10,10,10),((select distinct usernameid from dbo.Users where Username = 'Luis'),NULL,NULL,'Meta','Sigma',100,'F',120,80,10,10,10,10,10,10,10,10,10,10,10,10);


