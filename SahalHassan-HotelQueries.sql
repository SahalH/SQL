use sahalhassanhoteldb;

#1.

select firstname, roomNumber, startdate, enddate
from reservations
inner join reservationsGuest
on reservations.resID = reservationsGuest.resID
inner join guests
on reservationsGuest.GuestID = Guests.GuestID
where enddate like '2023-07%';

#2. 
use sahalhassanhoteldb;
select firstname, lastname, roomNumber, startdate, enddate
from guests
inner join reservationsGuest
on guests.GuestID = reservationsGuest.GuestID
inner join Reservations
on reservationsGuest.resID = Reservations.resID
inner join reservationRoom
on Reservations.resID = reservationRoom.resID
inner join Room
on reservationRoom.RoomID = room.RoomID
inner join roomAmenities
on room.RoomID = roomAmenities.RoomID
inner join Amenities
on roomAmenities.amenitiesID = Amenities.amenitiesID
where amenity like '%Microwave%';

#3. all rooms reserved, guest name, rooms reserved, start date, how many people included

use sahalhassanhoteldb;
select firstname, lastname, roomNumber, startdate, adult+children as peopleIncluded
from guests
inner join reservationsGuest
on guests.GuestID = reservationsGuest.GuestID
inner join Reservations
on reservationsGuest.resID = Reservations.resID
where firstname like "sahal";

#4. list of rooms, resID, cost per room for each res, 

use sahalhassanhoteldb;

select Reservations.resID, TotalRoomCost, price

from Reservations
inner join reservationRoom
on Reservations.resID = reservationRoom.resID
inner join Room
on reservationRoom.RoomID = room.RoomID;

#5
use sahalhassanhoteldb;
select * 
from reservations
where adult+children > 3 
AND (startdate like "2023-04%" or enddate like "2023-04%");



#6. guest name, number of res per guest, storted starting with guest with most res then guest last name

use sahalhassanhoteldb;
select firstname, lastname, count(*) as numberofRes 
from guests
inner join reservationsGuest
on guests.GuestID = reservationsGuest.GuestID
inner join Reservations
on reservationsGuest.resID = Reservations.resID
group by firstname
order by count(*) DESC, lastname desc;


#7. name, address, number

use sahalhassanhoteldb;

select firstname, lastname, address

from guests

where phone like "4782779632";