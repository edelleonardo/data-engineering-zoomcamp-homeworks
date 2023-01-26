--3

SELECT COUNT(*) FROM green_trip_data WHERE DATE(lpep_pickup_datetime) = '2019-01-15' AND DATE(lpep_dropoff_datetime) = '2019-01-15' 


--4

SELECT DATE(lpep_pickup_datetime) FROM green_trip_data WHERE trip_distance = (SELECT MAX(green_trip_data.trip_distance) FROM green_trip_data)


--5 

SELECT COUNT(*) FROM green_trip_data WHERE DATE(lpep_pickup_datetime) = '2019-01-01' AND green_trip_data.passenger_count = 2
SELECT COUNT(*) FROM green_trip_data WHERE DATE(lpep_pickup_datetime) = '2019-01-01' AND green_trip_data.passenger_count = 3

--6

SELECT "Zone" FROM taxi_zone_data WHERE taxi_zone_data."LocationID" = (SELECT "DOLocationID"
FROM green_trip_data WHERE tip_amount IN
(SELECT MAX(tip_amount) FROM green_trip_data  WHERE "PULocationID"= 7))
