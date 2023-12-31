USE [Contact Message Form]
GO
/****** Object:  StoredProcedure [dbo].[ESP_Contact_Form]    Script Date: 22-08-2023 17:37:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[ESP_Contact_Form] 
	-- Add the parameters for the stored procedure here
	@type VARCHAR(50),
	@ID BIGINT = NULL,
	@FullName VARCHAR(50) = NULL,
	@EmailAddress VARCHAR(50) = NULL,
	@Subject VARCHAR(50) = NULL,
	@Message VARCHAR(1000) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF (@type = 'Select')
	SELECT * from Contact
	else if (@type = 'insert')
	insert into Contact values (@FullName,@EmailAddress,@Subject,@Message)
END
