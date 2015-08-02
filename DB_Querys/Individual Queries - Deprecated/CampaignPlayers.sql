CREATE TABLE [dbo].[CampaignPlayers]
(
	[CampaignId] INT NOT NULL,
	[CharacterId] VARCHAR(50) NOT NULL,
	PRIMARY KEY CLUSTERED ([CampaignId],[CharacterId]),
	CONSTRAINT Campaign_Deleted FOREIGN KEY (CampaignId) REFERENCES [dbo].[Campaign](CampaignId) ON DELETE CASCADE,
	CONSTRAINT Characted_Deleted_Campaign FOREIGN KEY (CharacterId) REFERENCES [dbo].[Characters](CharacterId) ON DELETE CASCADE
)