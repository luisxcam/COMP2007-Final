CREATE TABLE [dbo].[Campaign]
(
	[CampaignId] INT NOT NULL PRIMARY KEY,
	[Username] VARCHAR(50) NOT NULL,
	[Title] VARCHAR(50),
	[Description] VARCHAR(400),
	[CreationDate] DATE,
	[NextSessionDate] DATETIME,
	CONSTRAINT Username_Deleted_Campaign FOREIGN KEY (Username) REFERENCES [dbo].[Users](Username) ON DELETE CASCADE
)