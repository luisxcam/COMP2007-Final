CREATE TABLE [dbo].[CharacterSpells]
(
	[SpellId] INT NOT NULL,
	[CharacterId] VARCHAR(50) NOT NULL,
	PRIMARY KEY CLUSTERED ([SpellId],[CharacterId]),
	CONSTRAINT Spell_Deleted FOREIGN KEY (SpellId) REFERENCES [dbo].[Spells](SpellsId) ON DELETE CASCADE,
	CONSTRAINT Character_Deleted_Spell FOREIGN KEY (CharacterId) REFERENCES [dbo].[Characters](CharacterId) ON DELETE CASCADE
)