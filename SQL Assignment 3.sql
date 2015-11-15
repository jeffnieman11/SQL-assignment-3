CREATE TABLE Users (Employee VARCHAR(40), Team VARCHAR(40));
INSERT INTO Users (Employee, Team)
VALUES
('Modesto', 'I.T.'),
('Ayine', 'I.T.'),
('Christopher', 'Sales'),
('Cheong Woo', 'Sales'),
('Saulat', 'Administration'),
('', 'Operations'),
('Heidy', '');

CREATE TABLE Rooms (Room VARCHAR(40), Team VARCHAR(40));
INSERT INTO Rooms (Room, Team)
VALUES
('101', 'I.T.'),
('102', 'I.T.'),
('102', 'Sales'),
('Auditorium  A', 'Sales'),
('', 'Administration'),
('Auditorium B', '');

SELECT Team, Employee FROM Users WHERE Team <> '';

SELECT Room, Team FROM Rooms WHERE Room <> '';

UPDATE Rooms
SET Room = ''
WHERE Team ='';

SELECT Users.Employee, Users.Team, Rooms.Room 
FROM Users
LEFT JOIN Rooms 
ON Users.Team = Rooms.Team
WHERE Users.Employee <>''
ORDER BY Users.Employee, Users.Team, Rooms.Room;

