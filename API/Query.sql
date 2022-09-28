CREATE DATABASE DTSMCC02

CREATE TABLE [dbo].[Divisions] (
    [Id]   INT            IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Divisions] PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[Departments] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (MAX) NULL,
    [DivisionId] INT            NOT NULL,
    CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Departments_Divisions_DivisionId] FOREIGN KEY ([DivisionId]) REFERENCES [dbo].[Divisions] ([Id]) ON DELETE CASCADE
);

CREATE TABLE [dbo].[Regions] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (MAX) NULL,
    [DivisionId] INT            NOT NULL,
    CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Regions_Divisions_DivisionId] FOREIGN KEY ([DivisionId]) REFERENCES [dbo].[Divisions] ([Id]) ON DELETE CASCADE
);