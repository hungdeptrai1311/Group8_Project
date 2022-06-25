USE [master];
GO

IF DB_ID('ProjectShoes') IS NOT NULL 
BEGIN
	ALTER DATABASE [ProjectShoes] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE [ProjectShoes];
END

CREATE DATABASE [ProjectShoes];
GO
USE [ProjectShoes];
GO


CREATE TABLE [EULA] (
	[ID]			INT IDENTITY (1, 1),
	[EULA]			NTEXT NOT NULL,

	PRIMARY KEY		([ID]),
);


CREATE TABLE [Account] (
	[UserID]		INT IDENTITY (1, 1),
	[Username]		VARCHAR (150) NOT NULL,
	[Password]		VARCHAR (150) NOT NULL,
	[Role]			INT NOT NULL,

	PRIMARY KEY		([UserID]),
	UNIQUE			([Username]),
);


CREATE TABLE [User] (
	[UserID]		INT,
	[Name]			NVARCHAR (150),
	[Email]			NVARCHAR (150),
	[Address]		NVARCHAR (MAX),
	[Phone]			NVARCHAR (10),

	PRIMARY KEY		([UserID]),
	FOREIGN KEY		([UserID]) REFERENCES [Account]([UserID]) ON DELETE CASCADE,
);


CREATE TABLE [Bill] (
	[BillID]		INT IDENTITY (1, 1),
	[CustomerID]	INT,
	[Date]			DATETIME NOT NULL,
	
	PRIMARY KEY		([BillID]),
	FOREIGN KEY		([CustomerID]) REFERENCES [Account]([UserID]) ON DELETE SET NULL,
);


CREATE TABLE [Brand] (
	[BrandID]		INT IDENTITY (1, 1),
	[Name]			NVARCHAR (150),
	[Description]	NTEXT,

	PRIMARY KEY		([BrandID]),
);


CREATE TABLE [Product] (
	[ProductID]		INT IDENTITY (1, 1),
	[Name]			NVARCHAR (150),
	[Description]	NTEXT,
	[Price]			REAL,
	[Quantity]		INT,
	[Status]		BIT,
	[Image]			VARCHAR(MAX),
	[BrandID]		INT,

	PRIMARY KEY		([ProductID]),
	FOREIGN KEY		([BrandID])	REFERENCES [Brand]([BrandID]),

	CHECK			([Quantity] >= 0),
);


CREATE TABLE [Order](
	[OrderID]		INT IDENTITY (1, 1),
	[ProductID]		INT,
	[BillID]		INT,
	[Quantity]		INT,
	[Payment]		REAL,

	PRIMARY KEY		([OrderID]),
	FOREIGN KEY		([ProductID]) REFERENCES [Product]([ProductID]) ON DELETE SET NULL,
	FOREIGN KEY		([BillID]) REFERENCES [Bill]([BillID]) ON DELETE SET NULL,

	CHECK			([Quantity] >= 0),
);

-------------------------------------------------------------
GO
CREATE PROCEDURE [sp_create_account]
	@Username		VARCHAR (150),
	@Password		VARCHAR (150),
	@Name			NVARCHAR (150),
	@Email			NVARCHAR (150),
	@Address		NVARCHAR (MAX),
	@Phone			NVARCHAR (10),
	@Role			INT
AS 
BEGIN
	INSERT INTO [Account]([Username], [Password], [Role]) 
	VALUES (@Username, @Password, @Role);

	INSERT INTO [User]([UserID], [Name], [Email], [Address], [Phone]) 
	VALUES (
		(SELECT [UserID] FROM [Account] WHERE [Username] = @Username),
		@Name,
		@Email,
		@Address,
		@Phone
	);
END
