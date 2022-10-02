drop database if exists sahalhassanhoteldb;
CREATE database sahalhassanhoteldb;
USE sahalhassanhoteldb;

create table Amenities (
amenitiesID int primary key auto_increment not null,
amenity varchar(50)
);

create table RoomType (
typeID int primary key auto_increment not null,
Descript varchar(40)
);

create table Room (
	RoomID int primary key auto_increment not null,
    typeID INT not null,
    ADA bool not null,
    StandardOcuupancy int,
    MaximumOccupancy int,
    price decimal not null,
    extraPerson decimal,
    foreign key fk_Room_typeID (typeID)
		references RoomType(typeID)
);

create table roomAmenities (
roomID int not null,
amenitiesID int not null,
foreign key fk_roomAmenities_roomID(roomID)
		references Room(roomID),
foreign key fk_Amenities_amenitiesID(amenitiesID)
		references Amenities(amenitiesID)
);

create table Reservations (
	resID int primary key not null,
	roomNumber int not null,
    Adult int not null,
    Children int,
    StartDate date not null,
    EndDate date not null,
    TotalRoomCost decimal not null 
);

create table guests (
	GuestID int primary key auto_increment not null,
    Firstname varchar(20) not null,
    Lastname varchar(20) not null,
    Address varchar(30) not null,
    City varchar(15) not null,
    State char(2) not null,
    Zip varchar(5) not null,
    Phone char(12)
);

create table reservationsGuest (
	resID int not null,
    GuestID int not null,
foreign key fk_reservationsGuest_resID(resID)
		references Reservations(resID),
foreign key fk_reservationsGuest_GuestID(GuestID)
		references guests(GuestID)
);

create table reservationRoom (
	roomID int not null,
    resID int not null,
foreign key fk_reservationRoom_roomID(roomID)
		references room(roomID),
foreign key fk_reservationRoom_resID(resID)
		references Reservations(resID)
);

