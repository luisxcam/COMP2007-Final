CREATE TABLE [dbo].[CampaignEnemies]
(
	[CampaignId] INT NOT NULL,
	[EnemyID] INT NOT NULL,
	PRIMARY KEY CLUSTERED ([CampaignId],[EnemyID]),
	CONSTRAINT [Campaing_Deleted] FOREIGN KEY (CampaignId) REFERENCES [dbo].[Campaign](CampaignId) ON DELETE CASCADE,
	CONSTRAINT [Enemy_Deleted] FOREIGN KEY (EnemyID) REFERENCES [dbo].[Enemy](EnemyID) ON DELETE CASCADE
)