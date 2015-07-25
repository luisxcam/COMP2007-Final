CREATE TABLE [dbo].[Skill]
(
	[SkillId] INT NOT NULL PRIMARY KEY,
	[Name] VARCHAR(50),
	[Description] VARCHAR(400),
	[CharClass] VARCHAR(50),
	[Rate] INT,
	[Efficiency] INT,
	[UsesPerDay] INT
);