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
Delete from [Treatment];
Delete from [Pets];
Delete from [Procedure];
Delete from [Owners];


insert into [Owners] values
(1,'Sinatra', 'Frank', 400111222),
(2,'Ellington', 'Duke', 400222333),
(3,'Fitzgerald', 'Ella', 400333444);


insert into [Pets] values
('Buster', 'Dog', 1),
('Buster', 'Dog', 3),
('Fluffy', 'Cat', 1),
('Stew', 'Rabbit', 2),
('Pooper', 'Dog', 3);

insert into [Procedure] values
(01, 'Rabies Vaccination', '2017-06-20', 24.00),
(01, 'Rabies Vaccination', '2018-05-15', 24.00),
(10, 'Examine and Treat Wound', '2018-05-10', 30.00),
(05, 'Heart Worm Test', '2018-05-18', 25.00),
(08, 'Tetnus Vaccination', '2017-06-20', 17.00);

insert into [Treatment] values

('2017-06-20', 01, 1, 'Buster', 'Routine Vaccination', 22.00),
('2018-05-15', 01, 1, 'Buster', 'Booster Shot', 24.00),
('2018-05-10', 10, 1, 'Fluffy', 'Wounds sustained in apparent cat fight', 30.00),
('2017-06-20', 01, 1, 'Fluffy', 'Routine Vaccination', 22.00),
('2018-05-10', 10, 2, 'Stew', 'Wounds sustained during attempt to cook the stew',30.00 ),
('2018-05-15', 01, 2, 'Stew', 'Routine Vaccination', 24.00),
('2018-05-18', 05, 3, 'Pooper', 'Routine Test', 25.00),
('2017-06-20', 08, 3, 'Buster', 'Stepped on a Rusty Nail', 17.00 ),
('2017-06-20', 01, 3, 'Buster', 'Routine Vaccination', 22.00 );
GO
