CREATE TABLE [dbo].[MsgTable] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [ChatMsg]      NVARCHAR (MAX) NOT NULL,
    [MsgSender]    NVARCHAR (50)  NOT NULL,
    [MsgReceiver]  NVARCHAR (50)  NOT NULL,
    [RecevierSeen] INT            DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MsgReceiver_Username] FOREIGN KEY ([MsgReceiver]) REFERENCES [dbo].[UserDatabase] ([Username]),
    CONSTRAINT [FK_MsgSender_Username] FOREIGN KEY ([MsgSender]) REFERENCES [dbo].[UserDatabase] ([Username])
);