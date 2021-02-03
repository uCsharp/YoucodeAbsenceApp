﻿CREATE PROCEDURE [dbo].[spStudent_GetTodayAbsence]
	@fullName nvarchar(50),
	@email nvarchar(50),
	@abs_datetime datetime ,
	@justificaion_name nvarchar(50)
AS
BEGIN
	    SELECT t1.FullName, t1.email, t3.abs_datetime, t4.justification_name 
		FROM dbo.[User] t1 inner join [student] t2 on t2.[user_ID] = t1.[user_ID] inner join [absence] t3 on t2.student_ID = t3.student_ID inner join [justification] t4 on t4.justification_ID = t3.justification_ID
		WHERE t1.fullName = @fullName and t1.email = @email and t3.abs_datetime = @abs_datetime and t4.justification_name = @justificaion_name ;
END

