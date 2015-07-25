CREATE TABLE [dbo].[CampaignNPC]
(
	[CampaignId] INT NOT NULL,
	[NPCId] INT NOT NULL,
	PRIMARY KEY CLUSTERED ([CampaignId],[NPCId]),
	CONSTRAINT [Campaign_Deleted] FOREIGN KEY (CampaignId) REFERENCES [dbo].[Campaign](CampaignId) ON DELETE CASCADE,
	CONSTRAINT [NPC_Deleted] FOREIGN KEY (NPCId) REFERENCES [dbo].[NPC](NPCId) ON DELETE CASCADE
)