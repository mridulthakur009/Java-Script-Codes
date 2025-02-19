USE [testDB]
GO
/****** Object:  StoredProcedure [dbo].[sp_getDuration]    Script Date: 22-02-2024 16:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_getDuration]
@ad DATE
AS  
BEGIN

SELECT * 
FROM Appointment 
WHERE TimeID IN (SELECT TimeID FROM [time]) 
AND AppointmentDate =  '2024-2-24';

END


--Old SP

--USE [testDB]
--GO
--/****** Object:  StoredProcedure [dbo].[sp_getDuration]    Script Date: 22-02-2024 16:50:36 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--ALTER PROCEDURE [dbo].[sp_getDuration]
--@ad DATE
--AS  
--BEGIN

--SELECT t.TimeID,[Time] FROM [Time] t left  JOIN Appointment a ON t.TimeID <> a.TimeID 
--where t.[TimeID] <> a.[TimeID] AND a.AppointmentDate = @ad

--END

USE [testDB]
GO
/****** Object:  StoredProcedure [dbo].[sp_getDuration]    Script Date: 22-02-2024 16:50:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_getDuration]
@ad DATE
AS  
BEGIN

SELECT t.* FROM [Time] t LEFT JOIN Appointment a ON t.TimeID = a.TimeID WHERE a.AppointmentDate = '2024-02-23' AND a.TimeID IS NULL
where t.[TimeID] <> a.[TimeID] AND a.AppointmentDate = @ad

END

SELECT t.* FROM [Time] t left join Appointment a on t.TimeID = a.TimeID AND a.AppointmentDate = '2024-02-22' WHERE a.AppointmentDate IS NULL