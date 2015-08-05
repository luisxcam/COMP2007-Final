USE [WebFormsIdentity]
GO

/****** Object: Table [dbo].[__MigrationHistory] Script Date: 2015-08-04 00:08:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[__MigrationHistory] (
    [MigrationId]    NVARCHAR (150)  NOT NULL,
    [ContextKey]     NVARCHAR (300)  NOT NULL,
    [Model]          VARBINARY (MAX) NOT NULL,
    [ProductVersion] NVARCHAR (32)   NOT NULL
);


