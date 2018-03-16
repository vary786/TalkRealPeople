CREATE procedure AddMsgToTable
@msg nvarchar(MAX),
@SenderName nvarchar(50),
@ReciverName nvarchar(50)
as
begin
	Insert into msgtable (chatMsg, MsgSender, msgReceiver) values(@msg, @SenderName, @ReciverName)
end

