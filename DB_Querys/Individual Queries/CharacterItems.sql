CREATE TABLE [dbo].[CharacterItems] (
    [ItemId]      INT          NOT NULL,
    [CharacterId] VARCHAR (50) NOT NULL,
    [Quantity]    INT          NULL,
    PRIMARY KEY CLUSTERED ([ItemId] ASC, [CharacterId] ASC),
    CONSTRAINT [Character_Deleted] FOREIGN KEY ([CharacterId]) REFERENCES [dbo].[Characters] ([CharacterId]) ON DELETE CASCADE,
    CONSTRAINT [Item_Deleted] FOREIGN KEY ([ItemId]) REFERENCES [dbo].[Items] ([ItemId]) ON DELETE CASCADE
);

