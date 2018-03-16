CREATE procedure ProcIsUserExist
@Uname nvarchar(50),
@EId nvarchar(50)
as
begin
	Declare @Ucount int
	Declare @EmailCount int
	Declare @returnId int

	select @EmailCount = COUNT(*) from UserDatabase where Email = @EId
	select @Ucount = COUNT(*) from UserDatabase where Username = @Uname
	
	
	if @Ucount = 0 and @EmailCount = 0
	begin
		set @returnId = 0 /* User Does not exist*/
	end
	else if @Ucount != 0  and  @EmailCount != 0
	begin
		set @returnId = -1 /* Both email & usermane are exist*/
	end
	else if @Ucount = 0  and  @EmailCount != 0
	begin
		set @returnId = -2 /*only Email is exist*/
	end
	else
	begin
		set @returnId = -3 /*only username is exist*/
	end

	select @returnId as ReturnCode
end