/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

if not exists (select 1 from dbo.RoomTypes)
begin
    INSERT INTO RoomTypes (Title, Description, Price)
	VALUES
	( 'Double Room', '1 double bed', 50),
	( 'Single Room', '1 single bed', 30),
	( 'Twin Room', '2 single beds', 60),
	( 'Luxury Double Room', '1 large double bed', 60),
	( 'Family Room', '1 double bed and 1 bunk bed', 80);
end

if not exists (select 1 from dbo.Rooms)
begin
	declare @roomId1 int;
	declare @roomId2 int;
	declare @roomId3 int;
	declare @roomId4 int;
	declare @roomId5 int;

	select @roomId1 = Id from dbo.RoomTypes where Title = 'Double Room';
	select @roomId2 = Id from dbo.RoomTypes where Title = 'Single Room';
	select @roomId3 = Id from dbo.RoomTypes where Title = 'Twin Room';
	select @roomId4 = Id from dbo.RoomTypes where Title = 'Luxury Double Room';
	select @roomId5 = Id from dbo.RoomTypes where Title = 'Family Room';


	INSERT INTO Rooms (RoomNumber, RoomTypeId)
	VALUES
	( '101', @RoomId1),
	( '102', @RoomId1),
	( '103', @RoomId1),
	( '201', @RoomId2),
	( '202', @RoomId2),
	( '203', @RoomId2),
	( '301', @RoomId3),
	( '302', @RoomId3),
	( '303', @RoomId3),
	( '401', @RoomId4),
	( '402', @RoomId4),
	( '501', @RoomId5);
end