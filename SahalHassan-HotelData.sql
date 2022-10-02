USE sahalhassanhoteldb;

delete from reservationsGuest
where GuestID = 8;

delete from reservationRoom
where resID = 10;

delete from Reservations
where resID = 10;

delete from guests
where GuestID = 8;



insert into guests (GuestID, Firstname, Lastname, Address, City, State, Zip, Phone) values
(1, 'Sahal', 'Hassan', '37 Oak Wood Hill', 'New Orleans', 'LA', '73250', 07354648597),
(2, 'Mack', 'Simmer', '379 Old Shore Street', 'Council Bluffs', 'IA', '51501', 2915530508),
(3, 'Bettyann', 'Seery', '750 Wintergreen Dr.', 'Wasilla', 'AK', '99654', 4782779632),
(4, 'Duane', 'Cullison', '9662 Foxrun Lane', 'Harlingen', 'TX', '78552', 3084940198),
(5, 'Karie', 'Yang', '9378 W. Augusta Ave.', 'West Deptford', 'NJ', '08096', 2147300298),
(6, 'Aurore', 'Lipton', '762 Wild Rose Street', 'Saginaw', 'MI', '48601', 3775070974),
(7, 'Zachery', 'Luechtefeld', '7 Poplar Dr.', 'Arvada', 'CO', '80003', 814485-2615),
(8, 'Jeremiah', 'Pendergrass', '70 Oakwood St.', 'Zion', 'IL', '60099', 2794910960),
(9, 'Walter', 'Holaway', '7556 Arrowhead St.', 'Cumberland', 'RI', '02864', 4463966785),
(10, 'Wilfred', 'Vise', '77 West Surrey Street', 'Oswego', 'NY', '13126', 8347271001),
(11, 'Maritza', 'Tilton', '939 Linda Rd.', 'Burke', 'VA', '22015', 4463516860),
(12, 'Joleen', 'Tison', '87 Queen St.', 'Drexel Hill', 'PA', '19026', 2318932755);

insert into Reservations (resID, roomNumber, Adult, Children, StartDate, EndDate, TotalRoomCost) values
(1, 205, 2, 0, '2023-06-28', '2023-07-02', '699.96'),
(2, 307, 1, 1, '2023-03-17', '2023-03-20', '524.97'),
(3, 308, 1, 0, '2023-02-02', '2023-02-04', '299.98'),
(4, 203, 2 ,1, '2023-02-05', '2023-02-10', '999.95'),
(5, 305, 2, 2, '2023-02-22', '2023-02-24', '349.98'),
(6, 201, 2, 2, '2023-03-06', '2023-03-07', '199.99'),
(7, 307, 1, 1, '2023-03-17', '2023-03-20', '524.97'),
(8, 302, 3, 0, '2023-03-18', '2023-03-23', '924.95'),
(9, 202, 2, 2, '2023-03-29', '2023-03-31', '349.98'),
(10, 304, 2, 0, '2023-03-31', '2023-04-05', '874.95'),
(11, 301, 1, 0, '2023-04-09', '2023-04-13', '799.96'),
(12, 207, 1, 1,	'2023-04-23', '2023-04-24', '174.99'),
(13, 401, 2, 4, '2023-05-30', '2023-06-02', '1199.97'),
(14, 206, 2, 0,	'2023-06-10', '2023-06-14', '599.96'),
(15, 208, 1, 0,	'2023-06-10', '2023-06-14', '599.96'),
(16, 304, 3, 0,	'2023-06-17', '2023-06-18', '184.99'),
(17, 204, 3, 1,	'2023-07-13', '2023-07-14', '184.99'),
(18, 401, 4, 2,	'2023-07-18', '2023-07-21', '1259.97'),
(19, 303, 2, 1,	'2023-07-28', '2023-07-29', '199.99'),
(20, 305, 1, 0,	'2023-08-30', '2023-09-01', '349.98'),
(21, 208, 2, 0,	'2023-09-16', '2023-09-17', '149.99'),
(22, 203, 2, 2,	'2023-09-13', '2023-09-15', '399.98'),
(23, 401, 2, 2,	'2023-11-22', '2023-11-25', '1199.97'),
(24, 206, 2, 0,	'2023-11-22', '2023-11-25', '449.97'),
(25, 301, 2, 2,	'2023-11-22', '2023-11-25', '599.97'),
(26, 302, 2, 0,	'2023-12-24', '2023-12-28', '699.96');

insert into RoomType (typeID, Descript) values
(1, "This is a Single Room"),
(2, "This is a Double Room"),
(3, "This is a Suite Room");

insert into Amenities (amenitiesID, amenity) values
(1, "Refrigerator"),
(2, "Microwave and Jacuzzi"),
(3, "Microwave and Refrigerator"),
(4,"Microwave, Refrigerator and Jacuzzi"),
(5, "Microwave, Refrigerator and Oven");

insert into Room (RoomID, typeID, ADA, StandardOcuupancy, MaximumOccupancy, price, extraPerson) values
(1, 1, 0, 2, 2, '174.99', null),
(2, 2, 0, 2, 4,	'199.99', 10),
(3, 2, 1, 2, 4, '174.99', 10),
(4, 2, 0, 2, 4, '199.99', 10),
(5, 2, 1, 2, 4,	'174.99', 10),
(6, 1, 0, 2, 2,	'174.99', null),
(7, 1, 1, 2, 2,	'149.99', null),
(8, 1, 0, 2, 2,	'174.99', null),
(9, 1, 1, 2, 2,	'149.99', null),
(10, 2, 0, 2, 4, '199.99', 10),
(11, 2, 1, 2, 4, '174.99', 10),
(12, 2, 0, 2, 4, '199.99', 10),
(13, 2, 1, 2, 4, '174.99', 10),
(14, 1, 0, 2, 2, '174.99', null),
(15, 1, 1, 2, 2, '149.99', null),
(16, 1, 0, 2, 2, '174.99', null),
(17, 1, 1, 2, 2, '149.99', null),
(18, 3, 1, 3, 8, '399.99', 20),
(19, 3, 1, 3, 8, '399.99', 20);

# refrig = 1
# microwave, jac = 2
# mic,ref=3
# mic, ref, jac = 4
# micr,ref,oven = 5

insert into roomAmenities (roomID, amenitiesID) values
(1, 4),
(2, 2),
(3, 1),
(4, 2),
(5, 1),
(6, 3),
(7, 4),
(8, 3),
(9, 1),
(10, 2),
(11, 1),
(12, 2),
(13, 1),
(14, 4),
(15, 2),
(16, 4),
(17, 3),
(18, 5),
(19, 5);

insert into reservationRoom (roomID, resID) values
(1, 1),
(1, 2),
(2, 3),
(3, 2),
(4, 5),
(5, 6),
(6, 8), 
(7, 9),
(8, 10),
(9, 11),
(10, 12),
(11, 13),
(12, 14),
(12, 15),
(6, 16),
(9, 17),
(10, 18), 
(3, 19),
(3, 20),
(2, 21),
(5, 22),
(4, 23),
(2, 24),
(2, 25),
(11, 26);


insert into reservationsGuest (resID, GuestID) values
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 5),
(8, 6), 
(9, 7),
(10, 8),
(11, 9),
(12, 10),
(13, 11),
(14, 12),
(15, 12),
(16, 6),
(17, 9),
(18, 10), 
(19, 3),
(20, 3),
(21, 2),
(22, 5),
(23, 4),
(24, 2),
(25, 2),
(26, 11);



