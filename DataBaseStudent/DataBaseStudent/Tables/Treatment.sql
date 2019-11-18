CREATE TABLE [dbo].[Treatment]
(
	[Date] Date,
	[ProcedureID] int,
	[OwnerID] int,
	[PetName] varchar(50),
	[Note] varchar(200),
	[Price] float,
	Primary Key ([Date],[OwnerID], [PetName],[ProcedureID]),
	Foreign Key ([PetName],[OwnerID]) references Pets([PetName],[OwnerID]),
	Foreign Key ([ProcedureID], [Date]) references [Procedure]([ProcedureID],[Date])
)
