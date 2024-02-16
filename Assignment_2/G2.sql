SELECT *
FROM vehicle
LEFT OUTER JOIN allocatedparking ON vehicle.license_plate_number = allocatedparking.license_plate_number;

SELECT license_plate_number, capacity, owner_first_name, owner_last_name,
CASE WHEN vehicle_type = "Bus" THEN 'InstituteBus' ELSE 'Other' END AS vehicle_type
FROM vehicle;

SELECT v.license_plate_number, v.capacity, v.owner_first_name, v.owner_last_name, v.vehicle_type, 
i.insurance_id, i.start_date, i.end_date
FROM vehicle v
JOIN insurance i ON v.license_plate_number = i.license_plate_number;

USE transportmanagement;
SELECT * from users;

USE transportmanagement;

REVOKE UPDATE, DELETE ON driver FROM user1;
REVOKE UPDATE, DELETE ON users FROM user1;

SHOW GRANTS FOR user1;

USE transportmanagement;
GRANT SELECT, UPDATE, DELETE ON users TO user1;
SHOW GRANTS FOR user1;

SELECT * FROM view2;

CREATE VIEW `view2` AS
SELECT driver.first_name, driver.last_name, driver.phone_number, driver.date_of_joining,
driver.bank_details, transportationlog.license_plate_number, transportationlog.starting_station,
transportationlog.ending_station, transportationlog.time_, transportationlog.num_of_passengers,
transportationlog.entry_exit
FROM driver
JOIN transportationlog ON driver.first_name = transportationlog.driver_first_name
AND driver.last_name = transportationlog.driver_last_name

CREATE VIEW `view1` AS
SELECT vehicle.licence_plate_number, vehicle.capacity, vehicle.vehicle_type,
driver.first_name, driver.last_name, driver.phone_number, driver.date_of_joining, driver.bank
FROM vehicle
JOIN driver ON vehicle.owner_first_name = driver.first_name AND vehicle.last_name = driver.last_name

ALTER TABLE TransportationLog
MODIFY entry_exit enum ('entry', 'exit') not null

GRANT SELECT, UPDATE, DELETE ON table1 TO user1;

USE transportmanagement;
SELECT * from driver;

UPDATE driver SET phone_number = 0 WHERE first_name = "Sophia";
SELECT * from driver;

USE transportmanagement;
SELECT * from users;
DELETE FROM users;
SELECT * from users;

USE transportmanagement;
SELECT * from driver;
DELETE FROM driver;
SELECT * from driver;

USE transportmanagement;
GRANT SELECT, UPDATE, DELETE ON parking_space TO user1;
SHOW GRANTS FOR user1;

USE transportmanagement;
SELECT * FROM view1;

USE transportmanagement;
SELECT * from view1;
UPDATE view1 SET phone_number = 0 WHERE first_name = "Kora";
SELECT * from view1;

USE transportmanagement;
SELECT * from view1;
DELETE FROM view1;
SELECT * from view1;

USE transportmanagement;
SELECT * from users;
DELETE FROM users;
SELECT * from users;

USE transportmanagement;
SELECT * FROM driver;

USE transportmanagement;
SELECT * FROM view1;

USE transportmanagement;
SELECT * from driver;
UPDATE driver SET phone_number = 0 WHERE first_name = "Sophia";
SELECT * from driver;