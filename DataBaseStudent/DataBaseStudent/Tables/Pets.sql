CREATE TABLE [dbo].[Pets]
(
	[PetName] varchar(50) NOT NULL,
	[Type] varchar(50),
	[OwnerID] int,
	Primary Key ([PetName],[OwnerID]),
	foreign Key ([OwnerID]) references Owners
)
