CREATE TABLE [dbo].[UserDatabase] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [Username]     NVARCHAR (50) NOT NULL,
    [Email]        NVARCHAR (50) NOT NULL,
    [Password]     NVARCHAR (50) NOT NULL,
    [Country]      NVARCHAR (50) NOT NULL,
    [OnlineStatus] INT           NULL,
    PRIMARY KEY CLUSTERED ([Username] ASC)
);
