CREATE TABLE [dbo].[Campaign]
(
	[CampaignId] INT NOT NULL PRIMARY KEY,
	[Username] VARCHAR(50) NOT NULL,
	[Title] VARCHAR(50),
	[Description] VARCHAR(400),
	[CreationDate] DATE,
	[NextSessionDate] DATETIME
)