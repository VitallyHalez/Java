/** Initialize db model structure */
Create table [Contact] (
	[Id] UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,
	[Name] nvarchar(250),
	[Surname] nvarchar(250),
	[MiddleName] nvarchar(250)
);

Create table [CommunicationType] (
	[Id] UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,
	[Name] nvarchar(250)
);

Create table [ContactCommunication] (
	[Id] UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,
	[ContactId] UNIQUEIDENTIFIER,
	[TypeId] UNIQUEIDENTIFIER,
	Number nvarchar(250),
	FOREIGN KEY ([TypeId]) REFERENCES [CommunicationType]([Id]),
	FOREIGN KEY ([ContactId]) REFERENCES [Contact]([Id])
);

/** ------- */

/** Initialize db model data */

insert into Contact (Name, Surname, MiddleName) values ('Jonh', 'Smith', '')
insert into CommunicationType (name) values ('Mobile phone')
insert into CommunicationType (name) values ('Email')
insert into CommunicationType (name) values ('Telegram')
insert into CommunicationType (name) values ('Instagram')
insert into CommunicationType (name) values ('Twitter')
insert into ContactCommunication (ContactId, TypeId, Number) values ('989556BE-010B-41A0-AF7E-832BEE8E447F', '7E9CDE1F-ECBC-4B55-A7CE-1F7891118130', '+38 (068) 777 33 55')

/** ------- */

/** Select result */

select * from Contact
select * from CommunicationType
select * from ContactCommunication

/** ------- */