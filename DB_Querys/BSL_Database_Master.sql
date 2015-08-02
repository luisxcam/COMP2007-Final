--Master Query
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
	[CampaignId] INT NOT NULL,
	[EnemyID] INT NOT NULL,
	[NullField] CHAR(1) DEFAULT 'X',
	PRIMARY KEY CLUSTERED ([CampaignId],[EnemyID]),
);

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[CampaignNPC]
(
	[CampaignId] INT NOT NULL,
	[NPCId] INT NOT NULL,
	[NullField] CHAR(1) DEFAULT 'X',
	PRIMARY KEY CLUSTERED ([CampaignId],[NPCId]),
);


-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[CampaignPlayers]
(
	[CharacterId] INT NOT NULL,
	[CampaignId] INT NOT NULL,
	[NullField] CHAR(1) DEFAULT 'X',
	PRIMARY KEY CLUSTERED ([CharacterId],[CampaignId]),
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
    [CharacterId] INT NOT NULL,
	[ItemId]      INT          NOT NULL,
    [Quantity]    INT          DEFAULT 0,
    PRIMARY KEY CLUSTERED ([CharacterId],[ItemId])
);

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[CharacterSkills]
(
	[CharacterId] INT NOT NULL,
	[SkillId] INT NOT NULL,
	[NullField] CHAR(1) DEFAULT 'X',
	PRIMARY KEY CLUSTERED ([CharacterId],[SkillId]),
);

-- * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - * - 
CREATE TABLE [dbo].[CharacterSpells]
(
	[CharacterId] INT NOT NULL,
	[SpellId] INT NOT NULL,
	[NullField] CHAR(1) DEFAULT 'X',
	PRIMARY KEY CLUSTERED ([CharacterId],[SpellId]),
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
	[Username] VARCHAR(50) NOT NULL,
	[FirstName] VARCHAR(50) NOT NULL,
	[LastName] VARCHAR(50) NOT NULL,
	[Password] VARCHAR(128) NOT NULL,
	[Email] VARCHAR(100) NOT NULL,
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
ALTER TABLE [dbo].[Campaign]
ADD CONSTRAINT [UsernameIdDeleted_DeleteCampaign] FOREIGN KEY (UsernameId) REFERENCES [dbo].[Users](UsernameId) ON DELETE CASCADE;

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
ADD FOREIGN KEY ([UsernameId]) REFERENCES [dbo].[Users] ([UsernameId]);
--Continue

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

