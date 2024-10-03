create database CC_petpals
use CC_petpals

--table creation and data insertion
create table Pets(
Pet_id int primary key,
Name varchar(100),
Age int,
Breed varchar(100),
Type varchar(100),
Shelter_id int,
foreign key (Shelter_id) references Shelters(Shelter_id),
Available_for_adaption bit
);
drop table Pets
insert into Pets (Pet_id, Name, Age, Breed, Type,Shelter_id, Available_for_adaption)
values
(1, 'Stark', 3, 'Golden Retriever', 'Dog',1, 1),
(2, 'Whiskers', 2, 'Tabby', 'Cat',2, 1),
(3, 'Rex', 5, 'German Shepherd', 'Dog',3, 1),
(4, 'Sumbul', 1, 'Angora', 'Rabbit',4, 0),
(5, 'Goldie', 1, 'Goldfish', 'Fish',5, 1),
(6, 'Charlie', 4, 'Cocker Spaniel', 'Dog',6, 0),
(7, 'Luna', 2, 'Siamese', 'Cat',7, 1),
(8, 'Shadow', 6, 'Labrador', 'Dog',8, 1),
(9, 'Nibby', 3, 'Hamster', 'Rodent',9, 1),
(10, 'Bella', 3, 'Bulldog', 'Dog',10, 0);

select * from Pets

create table Shelters(
Shelter_id int primary key,
Name varchar(100),
Location varchar(100)
);
select * from Shelters

insert into Shelters (Shelter_id, Name, Location)
values
(1, 'Happy Paws', 'Downtown'),
(2, 'Safe Haven', 'Uptown'),
(3, 'Furry Friends', 'East Side'),
(4, 'Paw Rescue', 'West End'),
(5, 'Animal Haven', 'North District'),
(6, 'Pet Palace', 'South City'),
(7, 'Paw Prints', 'Suburbs'),
(8, 'Best Friends Shelter', 'City Center'),
(9, 'Rescue Hub', 'Near Park'),
(10, 'Adoption Center', 'Outskirts');


create table Donations(
Donation_id int primary key,
Donor_name varchar(100),
Donation_type varchar(100),
Donation_amount int,
Donation_item varchar(100),
Donation_date datetime
);
select * from Donaitons

insert into Donations (Donation_id, Donor_name, Donation_type, Donation_amount, Donation_item, Donation_date,Shelter_name)
values
(1, 'John', 'Cash', 500, NULL, '2024-09-01 10:00:00','Paw palace'),
(2, 'Smith', 'Item', NULL, 'Pet Food', '2024-09-02 11:00:00','Animal Haven'),
(3, 'Johnson', 'Cash', 1000, NULL, '2024-09-03 12:00:00','Paw Prints'),
(4, 'Brown', 'Item', NULL, 'Pet Toys', '2024-09-04 09:30:00','Paw palace'),
(5, 'Black', 'Cash', 300, NULL, '2024-09-05 10:15:00','Paw Prints'),
(6, 'Diana ', 'Item', NULL, 'Cages', '2024-09-06 14:00:00','Paw palace'),
(7, 'Edward', 'Cash', 200, NULL, '2024-09-07 13:45:00','Furry Friends'),
(8, 'Fiona ', 'Item', NULL, 'Beds', '2024-09-08 15:30:00','Animal Haven'),
(9, 'Gray', 'Cash', 150, NULL, '2024-09-09 11:20:00','Furry Friends'),
(10, 'Red', 'Item', NULL, 'Leashes', '2024-09-10 12:50:00','Paw Prints');


create table AdoptionEvents(
Event_id int primary key,
Event_name varchar(100),
Event_date datetime,
Location varchar(100)
)
select * from AdoptionEvents

insert into AdoptionEvents (Event_id, Event_name, Event_date, Location)
values
(1, 'Adopt a Pet Day', '2024-10-15 10:00:00', 'Central Park'),
(2, 'Rescue Run', '2024-11-01 09:00:00', 'Main Plaza'),
(3, 'Puppy Party', '2024-10-20 11:00:00', 'Community Hall'),
(4, 'Feline Fest', '2024-10-25 13:00:00', 'City Center'),
(5, 'Adoption Weekend', '2024-11-10 14:00:00', 'Expo Grounds'),
(6, 'Animal Awareness Day', '2024-11-15 15:00:00', 'South Park'),
(7, 'Pet Parade', '2024-12-01 10:30:00', 'East Street'),
(8, 'Pet Fair', '2024-12-05 09:30:00', 'Town Square'),
(9, 'Shelter Showcase', '2024-12-10 10:00:00', 'Downtown Park'),
(10, 'Holiday Adoption Event', '2024-12-20 14:00:00', 'Mall Atrium');


create table Participants(
Participant_id int primary key,
Participant_name varchar(100),
Participant_type varchar(100),
Event_id int,
foreign key (Event_id) references AdoptionEvents(Event_id)
)

insert into Participants (Participant_id, Participant_name, Participant_type, Event_id)
values
(1, 'Shelter Volunteers', 'Shelter', 1),
(2, 'Animal Rescue', 'Adopter', 2),
(3, 'Pet Owners', 'Shelter', 3),
(4, 'Local Vets', 'Adopter', 4),
(5, 'Adopters', 'Adopter', 5),
(6, 'Animal Advocates', 'Shelter', 6),
(7, 'Pet Lovers', 'Adopter', 7),
(8, 'Dog Trainers', 'Adopter', 8),
(9, 'Shelter Teams', 'Shelter', 9),
(10, 'Rescue Workers', 'Shelter', 10);


select * from Participants

--Tasks:
--1. Provide a SQL script that initializes the database for the Pet Adoption Platform ”PetPals”.
Create database Petpals
use Petpals;
--2. Create tables for pets, shelters, donations, adoption events, and participants.

create table Pets(
Pet_id int primary key,
Name varchar(100),
Age int,
Breed varchar(100),
Type varchar(100),
Available_for_adaption bit
);

create table Shelters(
Shelter_id int primary key,
Name varchar(100),
Location varchar(100)
);

create table Donations(
Donation_id int primary key,
Donor_name varchar(100),
Donation_type varchar(100),
Donation_amount int,
Donation_item varchar(100),
Donation_date datetime,
Shelter_Name varchar(100)
);
drop table Donations

create table AdoptionEvents(
Event_id int primary key,
Event_name varchar(100),
Event_date datetime,
Location varchar(100)
)

create table Participants(
Participant_id int primary key,
Participant_name varchar(100),
Participant_type varchar(100),
Event_id int,
foreign key (Event_id) references AdoptionEvents(Event_id)
)
--3. Define appropriate primary keys, foreign keys, and constraints. 
--primary keys
Pet_id int primary key,
Shelter_id int primary key,
Donation_id int primary key,
Event_id int primary key,
Participant int primary key
--foreign keys
Event_id int,
foreign key (Event_id) references AdoptionEvents(Event_id)
--4. Ensure the script handles potential errors, such as if the database or tables already exist.
create database CC_petpals
--Output message
--Database 'CC_petpals' already exists. Choose a different database name.
Pet_id int primary key,
Name varchar(100),
Age int,
Breed varchar(100),
Type varchar(100),
Available_for_adaption bit
);
--Output message
--There is already an object named 'Pets' in the database.

--5. Write an SQL query that retrieves a list of available pets (those marked as available for adoption) 
--from the "Pets" table. Include the pet's name, age, breed, and type in the result set. Ensure that 
--the query filters out pets that are not available for adoption.
select Pet_id,name,Age,Breed,Type
from Pets
where Available_for_adaption = 1
--6. Write an SQL query that retrieves the names of participants (shelters and adopters) registered 
--for a specific adoption event. Use a parameter to specify the event ID. Ensure that the query 
--joins the necessary tables to retrieve the participant names and types.
select p.Participant_name,p.Event_id,ae.Event_name
from Participants p
join AdoptionEvents ae
on p.Event_id = ae.Event_id
group by p.Participant_name,p.Event_id,ae.Event_name
having p.Event_id = 1
--7. Create a stored procedure in SQL that allows a shelter to update its information (name and 
--location) in the "Shelters" table. Use parameters to pass the shelter ID and the new information. 
--Ensure that the procedure performs the update and handles potential errors, such as an invalid 
--shelter ID.
create procedure UpdateShelterInfo
    @Shelter_id INT,
    @NewName VARCHAR(100),
    @NewLocation VARCHAR(255)
as
begin
    IF EXISTS (SELECT 1 FROM Shelters WHERE Shelter_id = @Shelter_id)
    BEGIN
        UPDATE Shelters
        SET Name = @NewName, Location = @NewLocation
        WHERE Shelter_ID = @Shelter_id;
    END
    ELSE
    BEGIN
        PRINT 'Shelter ID not found.';
    END
END;
GO
--8. Write an SQL query that calculates and retrieves the total donation amount for each shelter (by 
---shelter name) from the "Donations" table. The result should include the shelter name and the 
--total donation amount. Ensure that the query handles cases where a shelter has received no 
--donations.
-- added a new column in Donation table Shelter_name
select sum(Donation_amount) total_amount,Shelter_name
from Donations
group by Shelter_name
--9. Write an SQL query that retrieves the names of pets from the "Pets" table that do not have an 
--owner (i.e., where "OwnerID" is null). Include the pet's name, age, breed, and type in the result 
--set.
-- added a new column in pets table Owner_name
select Name, age,breed,type,Owner_name
from Pets
where Available_for_adaption = 0
--10. Write an SQL query that retrieves the total donation amount for each month and year (e.g., 
--January 2023) from the "Donations" table. The result should include the month-year and the 
--corresponding total donation amount. Ensure that the query handles cases where no donations 
--were made in a specific month-year.
SELECT FORMAT(Donation_date, 'yyyy-MM') AS Month_Year,
       COALESCE(SUM(Donation_amount), 0) AS Total_Donation_Amount
FROM Donations
GROUP BY FORMAT(Donation_date, 'yyyy-MM')
ORDER BY Month_Year;




---11. Retrieve a list of distinct breeds for all pets that are either aged between 1 and 3 years or older
--than 5 years.
select Breed,Name Pet_name,age
from pets
where age between 1 and 3 or 
age > 5
--12. Retrieve a list of pets and their respective shelters where the pets are currently available for 
--adoption.
select p.Name,p.Breed,p.Shelter_id,s.Name
from Pets p
join Shelters s
on p.Shelter_id = s.Shelter_id
Group by p.Name,p.Breed,p.Shelter_id,s.Name

--13. Find the total number of participants in events organized by shelters located in specific city.
--Example: City=Chennai
select count(distinct p.Participant_id)  Total_Participants
from Participants p
join AdoptionEvents ae 
on p.Event_id = ae.Event_id
join Shelters s 
on ae.Location = s.Location
where s.Location = 'Uptown';

--14. Retrieve a list of unique breeds for pets with ages between 1 and 5 years.
select distinct Breed
FROM Pets
WHERE Age BETWEEN 1 AND 5;

--15. Find the pets that have not been adopted by selecting their information from the 'Pet' table.
SELECT *
FROM Pets
where Available_for_adaption = 0

--16. Retrieve the names of all adopted pets along with the adopter's name from the 'Adoption' and 
--'User' tables.
SELECT p.Name Pet_Name, u.Participant_name Adopter_Name
FROM Adoption a
JOIN Pets p 
ON a.Pet_id = p.Pet_id
JOIN Users u 
ON a.Adopter_id = u.User_id; -- assuming the User table has User_id as primary key

--17. Retrieve a list of all shelters along with the count of pets currently available for adoption in each 
--shelter.
SELECT s.Name Shelter_Name, COUNT(p.Pet_id) Available_Pet_Count
FROM Shelters s
LEFT JOIN Pets p 
ON s.Shelter_id = p.Shelter_id AND p.Available_for_adaption = 1
GROUP BY s.Name;

--18. Find pairs of pets from the same shelter that have the same breed.
select p1.Name Pet1_Name, p2.Name Pet2_Name, p1.Breed, s.Name Shelter_Name
FROM Pets p1
JOIN Pets p2 ON p1.Breed = p2.Breed AND p1.Pet_id <> p2.Pet_id
JOIN Shelters s ON p1.Shelter_id = s.Shelter_id
ORDER BY s.Name, p1.Breed;

--19. List all possible combinations of shelters and adoption events.
SELECT s.Name Shelter_Name, ae.Event_name Adoption_Event_Name
FROM Shelters s
CROSS JOIN AdoptionEvents ae;

--20. Determine the shelter that has the highest number of adopted pets
SELECT top 1 s.Name Shelter_Name, COUNT(a.Pet_id) Total_Adopted_Pets
FROM Shelters s
JOIN Pets a 
ON s.Shelter_id = a.Shelter_id
GROUP BY s.Name
ORDER BY Total_Adopted_Pets DESC



