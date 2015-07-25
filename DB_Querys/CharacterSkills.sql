CREATE TABLE [dbo].[CharacterSkills]
(
	[SkillId] INT NOT NULL,
	[CharacterId] VARCHAR(50) NOT NULL,
	PRIMARY KEY CLUSTERED ([SkillId],[CharacterId]),
	CONSTRAINT Skill_Deteled FOREIGN KEY (SkillId) REFERENCES [dbo].[Skill](SkillId) ON DELETE CASCADE,
	CONSTRAINT Character_Deleted_Skills FOREIGN KEY (CharacterId) REFERENCES [dbo].[Characters](CharacterId) ON DELETE CASCADE
)