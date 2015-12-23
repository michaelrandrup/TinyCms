﻿CREATE TABLE [dbo].[Page] (
    [Name]           VARCHAR (100)    NOT NULL,
    [Culture]        VARCHAR (10)     CONSTRAINT [DF_Page_LCID] DEFAULT ((1030)) NOT NULL,
    [PageFolderId]   UNIQUEIDENTIFIER NOT NULL,
    [Id]             UNIQUEIDENTIFIER CONSTRAINT [DF_Page_Id] DEFAULT (newid()) NOT NULL,
    [Title]          VARCHAR (100)    NULL,
    [Description]    VARCHAR (400)    NULL,
    [Model]          VARCHAR (MAX)    NULL,
    [PageTypeId]     UNIQUEIDENTIFIER NULL,
    [RequireSsl]     BIT              CONSTRAINT [DF_Page_RequireSsl] DEFAULT ((0)) NOT NULL,
    [PageSecurityId] INT              CONSTRAINT [DF_Page_PageSecurityId] DEFAULT ((0)) NOT NULL,
    [PageAudienceId] INT              NULL,
    CONSTRAINT [PK_Page_1] PRIMARY KEY CLUSTERED ([PageFolderId] ASC, [Name] ASC, [Culture] ASC),
    CONSTRAINT [FK_Page_PageAudience] FOREIGN KEY ([PageAudienceId]) REFERENCES [dbo].[PageAudience] ([Id]),
    CONSTRAINT [FK_Page_PageFolder] FOREIGN KEY ([PageFolderId]) REFERENCES [dbo].[PageFolder] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_Page_PageSecurity] FOREIGN KEY ([PageSecurityId]) REFERENCES [dbo].[PageSecurity] ([Id]),
    CONSTRAINT [FK_Page_PageType] FOREIGN KEY ([PageTypeId], [Culture]) REFERENCES [dbo].[PageType] ([Id], [Culture]) ON UPDATE CASCADE
);

