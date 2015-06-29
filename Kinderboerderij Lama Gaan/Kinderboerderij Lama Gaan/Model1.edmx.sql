
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/26/2015 11:10:59
-- Generated from EDMX file: C:\Users\Joshua\Documents\GitHub\Pit4Casus\Kinderboerderij Lama Gaan\Kinderboerderij Lama Gaan\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [LamaGaan];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ProductDieren_Product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductDieren] DROP CONSTRAINT [FK_ProductDieren_Product];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductDieren_Dieren]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductDieren] DROP CONSTRAINT [FK_ProductDieren_Dieren];
GO
IF OBJECT_ID(N'[dbo].[FK_MedewerkerRoosterMedewerkers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MedewerkersSet1] DROP CONSTRAINT [FK_MedewerkerRoosterMedewerkers];
GO
IF OBJECT_ID(N'[dbo].[FK_InschrijvingEvenement]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InschrijvingSet1] DROP CONSTRAINT [FK_InschrijvingEvenement];
GO
IF OBJECT_ID(N'[dbo].[FK_VerkoopProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductSet] DROP CONSTRAINT [FK_VerkoopProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_VerkoopWinkel]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VerkoopSet1] DROP CONSTRAINT [FK_VerkoopWinkel];
GO
IF OBJECT_ID(N'[dbo].[FK_InkoopProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductSet] DROP CONSTRAINT [FK_InkoopProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_VoerSchemaDieren]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DierenSet] DROP CONSTRAINT [FK_VoerSchemaDieren];
GO
IF OBJECT_ID(N'[dbo].[FK_VoerSchemaProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductSet] DROP CONSTRAINT [FK_VoerSchemaProduct];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[DierenSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DierenSet];
GO
IF OBJECT_ID(N'[dbo].[MedewerkerRoosterSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MedewerkerRoosterSet];
GO
IF OBJECT_ID(N'[dbo].[VideoSet1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VideoSet1];
GO
IF OBJECT_ID(N'[dbo].[InschrijvingSet1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InschrijvingSet1];
GO
IF OBJECT_ID(N'[dbo].[VerkoopSet1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VerkoopSet1];
GO
IF OBJECT_ID(N'[dbo].[EvenementSet1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EvenementSet1];
GO
IF OBJECT_ID(N'[dbo].[MedewerkersSet1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MedewerkersSet1];
GO
IF OBJECT_ID(N'[dbo].[VoerSchemaSet1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VoerSchemaSet1];
GO
IF OBJECT_ID(N'[dbo].[FotoSet1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FotoSet1];
GO
IF OBJECT_ID(N'[dbo].[OpeningstijdenSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OpeningstijdenSet];
GO
IF OBJECT_ID(N'[dbo].[WinkelSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WinkelSet];
GO
IF OBJECT_ID(N'[dbo].[InkoopSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InkoopSet];
GO
IF OBJECT_ID(N'[dbo].[ProductSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductSet];
GO
IF OBJECT_ID(N'[dbo].[ProductDieren]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductDieren];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'DierenSet'
CREATE TABLE [dbo].[DierenSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [naam] nvarchar(max)  NOT NULL,
    [geslacht] nvarchar(max)  NOT NULL,
    [soort] nvarchar(max)  NOT NULL,
    [voerId] int  NOT NULL,
    [VoerSchema_Id] int  NOT NULL
);
GO

-- Creating table 'MedewerkerRoosterSet'
CREATE TABLE [dbo].[MedewerkerRoosterSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [medewerkerId] int  NOT NULL,
    [week] nvarchar(max)  NOT NULL,
    [dag] nvarchar(max)  NOT NULL,
    [tijdVan] time  NULL,
    [tijdTot] time  NULL
);
GO

-- Creating table 'VideoSet1'
CREATE TABLE [dbo].[VideoSet1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [videoUrl] nvarchar(max)  NOT NULL,
    [naam] nvarchar(max)  NOT NULL,
    [beschrijving] nvarchar(max)  NULL
);
GO

-- Creating table 'InschrijvingSet1'
CREATE TABLE [dbo].[InschrijvingSet1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [voornaam] nvarchar(max)  NOT NULL,
    [achternaam] nvarchar(max)  NOT NULL,
    [leeftijd] int  NOT NULL,
    [geslacht] nvarchar(max)  NOT NULL,
    [email] nvarchar(max)  NOT NULL,
    [evenementId] int  NOT NULL,
    [Evenement_Id] int  NOT NULL
);
GO

-- Creating table 'VerkoopSet1'
CREATE TABLE [dbo].[VerkoopSet1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [productId] int  NOT NULL,
    [winkelId] int  NOT NULL,
    [aantal] int  NOT NULL,
    [Winkel_Id] int  NOT NULL
);
GO

-- Creating table 'EvenementSet1'
CREATE TABLE [dbo].[EvenementSet1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [naam] nvarchar(max)  NOT NULL,
    [prijs] decimal(18,2)  NOT NULL,
    [aantalDeelnemers] int  NOT NULL,
    [maxDeelnemers] int  NULL,
    [beschrijving] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'MedewerkersSet1'
CREATE TABLE [dbo].[MedewerkersSet1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [naam] nvarchar(max)  NOT NULL,
    [achternaam] nvarchar(max)  NOT NULL,
    [leeftijd] int  NOT NULL,
    [geslacht] nvarchar(max)  NOT NULL,
    [email] nvarchar(max)  NULL,
    [functie] nvarchar(max)  NOT NULL,
    [telnr] int  NOT NULL,
    [adres] nvarchar(max)  NOT NULL,
    [MedewerkerRooster_Id] int  NOT NULL
);
GO

-- Creating table 'VoerSchemaSet1'
CREATE TABLE [dbo].[VoerSchemaSet1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [voerId] int  NOT NULL,
    [dierenId] int  NOT NULL,
    [dag] nvarchar(max)  NOT NULL,
    [tijd] time  NOT NULL,
    [medewerkersId] int  NOT NULL
);
GO

-- Creating table 'FotoSet1'
CREATE TABLE [dbo].[FotoSet1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [imgUrl] nvarchar(max)  NOT NULL,
    [naam] nvarchar(max)  NOT NULL,
    [beschrijving] nvarchar(max)  NULL
);
GO

-- Creating table 'OpeningstijdenSet'
CREATE TABLE [dbo].[OpeningstijdenSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [week] nvarchar(max)  NOT NULL,
    [dag] nvarchar(max)  NOT NULL,
    [tijdVan] time  NULL,
    [tijdTot] time  NULL,
    [open] bit  NOT NULL
);
GO

-- Creating table 'WinkelSet'
CREATE TABLE [dbo].[WinkelSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [naam] nvarchar(max)  NOT NULL,
    [type] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'InkoopSet'
CREATE TABLE [dbo].[InkoopSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [aantal] nvarchar(max)  NOT NULL,
    [beschrijving] nvarchar(max)  NULL,
    [productId] int  NOT NULL
);
GO

-- Creating table 'ProductSet'
CREATE TABLE [dbo].[ProductSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [naam] nvarchar(max)  NOT NULL,
    [prijs] decimal(18,2)  NOT NULL,
    [bestelEenheid] int  NOT NULL,
    [voorraad] int  NOT NULL,
    [afkomst] nvarchar(max)  NOT NULL,
    [datum] datetime  NULL,
    [Verkoop_Id] int  NOT NULL,
    [Inkoop_Id] int  NOT NULL,
    [VoerSchema_Id] int  NULL
);
GO

-- Creating table 'ProductDieren'
CREATE TABLE [dbo].[ProductDieren] (
    [Product_Id] int  NOT NULL,
    [Dieren_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'DierenSet'
ALTER TABLE [dbo].[DierenSet]
ADD CONSTRAINT [PK_DierenSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MedewerkerRoosterSet'
ALTER TABLE [dbo].[MedewerkerRoosterSet]
ADD CONSTRAINT [PK_MedewerkerRoosterSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'VideoSet1'
ALTER TABLE [dbo].[VideoSet1]
ADD CONSTRAINT [PK_VideoSet1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'InschrijvingSet1'
ALTER TABLE [dbo].[InschrijvingSet1]
ADD CONSTRAINT [PK_InschrijvingSet1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'VerkoopSet1'
ALTER TABLE [dbo].[VerkoopSet1]
ADD CONSTRAINT [PK_VerkoopSet1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EvenementSet1'
ALTER TABLE [dbo].[EvenementSet1]
ADD CONSTRAINT [PK_EvenementSet1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MedewerkersSet1'
ALTER TABLE [dbo].[MedewerkersSet1]
ADD CONSTRAINT [PK_MedewerkersSet1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'VoerSchemaSet1'
ALTER TABLE [dbo].[VoerSchemaSet1]
ADD CONSTRAINT [PK_VoerSchemaSet1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FotoSet1'
ALTER TABLE [dbo].[FotoSet1]
ADD CONSTRAINT [PK_FotoSet1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'OpeningstijdenSet'
ALTER TABLE [dbo].[OpeningstijdenSet]
ADD CONSTRAINT [PK_OpeningstijdenSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'WinkelSet'
ALTER TABLE [dbo].[WinkelSet]
ADD CONSTRAINT [PK_WinkelSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'InkoopSet'
ALTER TABLE [dbo].[InkoopSet]
ADD CONSTRAINT [PK_InkoopSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProductSet'
ALTER TABLE [dbo].[ProductSet]
ADD CONSTRAINT [PK_ProductSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Product_Id], [Dieren_Id] in table 'ProductDieren'
ALTER TABLE [dbo].[ProductDieren]
ADD CONSTRAINT [PK_ProductDieren]
    PRIMARY KEY CLUSTERED ([Product_Id], [Dieren_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Product_Id] in table 'ProductDieren'
ALTER TABLE [dbo].[ProductDieren]
ADD CONSTRAINT [FK_ProductDieren_Product]
    FOREIGN KEY ([Product_Id])
    REFERENCES [dbo].[ProductSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Dieren_Id] in table 'ProductDieren'
ALTER TABLE [dbo].[ProductDieren]
ADD CONSTRAINT [FK_ProductDieren_Dieren]
    FOREIGN KEY ([Dieren_Id])
    REFERENCES [dbo].[DierenSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductDieren_Dieren'
CREATE INDEX [IX_FK_ProductDieren_Dieren]
ON [dbo].[ProductDieren]
    ([Dieren_Id]);
GO

-- Creating foreign key on [MedewerkerRooster_Id] in table 'MedewerkersSet1'
ALTER TABLE [dbo].[MedewerkersSet1]
ADD CONSTRAINT [FK_MedewerkerRoosterMedewerkers]
    FOREIGN KEY ([MedewerkerRooster_Id])
    REFERENCES [dbo].[MedewerkerRoosterSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MedewerkerRoosterMedewerkers'
CREATE INDEX [IX_FK_MedewerkerRoosterMedewerkers]
ON [dbo].[MedewerkersSet1]
    ([MedewerkerRooster_Id]);
GO

-- Creating foreign key on [Evenement_Id] in table 'InschrijvingSet1'
ALTER TABLE [dbo].[InschrijvingSet1]
ADD CONSTRAINT [FK_InschrijvingEvenement]
    FOREIGN KEY ([Evenement_Id])
    REFERENCES [dbo].[EvenementSet1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InschrijvingEvenement'
CREATE INDEX [IX_FK_InschrijvingEvenement]
ON [dbo].[InschrijvingSet1]
    ([Evenement_Id]);
GO

-- Creating foreign key on [Verkoop_Id] in table 'ProductSet'
ALTER TABLE [dbo].[ProductSet]
ADD CONSTRAINT [FK_VerkoopProduct]
    FOREIGN KEY ([Verkoop_Id])
    REFERENCES [dbo].[VerkoopSet1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VerkoopProduct'
CREATE INDEX [IX_FK_VerkoopProduct]
ON [dbo].[ProductSet]
    ([Verkoop_Id]);
GO

-- Creating foreign key on [Winkel_Id] in table 'VerkoopSet1'
ALTER TABLE [dbo].[VerkoopSet1]
ADD CONSTRAINT [FK_VerkoopWinkel]
    FOREIGN KEY ([Winkel_Id])
    REFERENCES [dbo].[WinkelSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VerkoopWinkel'
CREATE INDEX [IX_FK_VerkoopWinkel]
ON [dbo].[VerkoopSet1]
    ([Winkel_Id]);
GO

-- Creating foreign key on [Inkoop_Id] in table 'ProductSet'
ALTER TABLE [dbo].[ProductSet]
ADD CONSTRAINT [FK_InkoopProduct]
    FOREIGN KEY ([Inkoop_Id])
    REFERENCES [dbo].[InkoopSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InkoopProduct'
CREATE INDEX [IX_FK_InkoopProduct]
ON [dbo].[ProductSet]
    ([Inkoop_Id]);
GO

-- Creating foreign key on [VoerSchema_Id] in table 'DierenSet'
ALTER TABLE [dbo].[DierenSet]
ADD CONSTRAINT [FK_VoerSchemaDieren]
    FOREIGN KEY ([VoerSchema_Id])
    REFERENCES [dbo].[VoerSchemaSet1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VoerSchemaDieren'
CREATE INDEX [IX_FK_VoerSchemaDieren]
ON [dbo].[DierenSet]
    ([VoerSchema_Id]);
GO

-- Creating foreign key on [VoerSchema_Id] in table 'ProductSet'
ALTER TABLE [dbo].[ProductSet]
ADD CONSTRAINT [FK_VoerSchemaProduct]
    FOREIGN KEY ([VoerSchema_Id])
    REFERENCES [dbo].[VoerSchemaSet1]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VoerSchemaProduct'
CREATE INDEX [IX_FK_VoerSchemaProduct]
ON [dbo].[ProductSet]
    ([VoerSchema_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------