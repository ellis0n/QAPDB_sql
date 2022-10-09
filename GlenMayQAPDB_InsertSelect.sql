-- CITIES
INSERT INTO qap1.cities (id, "cityName", state, pop) VALUES (1, 'New York            ', 'NY', 23000000);
INSERT INTO qap1.cities (id, "cityName", state, pop) VALUES (2, 'Los Angeles         ', 'LA', 3849297);
INSERT INTO qap1.cities (id, "cityName", state, pop) VALUES (3, 'Chicago             ', 'IL', 2696555);
INSERT INTO qap1.cities (id, "cityName", state, pop) VALUES (4, 'Houston             ', 'TX', 2288250);
INSERT INTO qap1.cities (id, "cityName", state, pop) VALUES (5, 'Pheonix             ', 'AR', 1624569);

-- AIRPORTS
INSERT INTO qap1.airports (id, "airportName", code, city_id) VALUES (1, 'La Guardia                                        ', 'LGA', 1);
INSERT INTO qap1.airports (id, "airportName", code, city_id) VALUES (2, 'John F Kennedy                                    ', 'JFK', 1);
INSERT INTO qap1.airports (id, "airportName", code, city_id) VALUES (3, 'Los Angeles International                         ', 'LAX', 2);
INSERT INTO qap1.airports (id, "airportName", code, city_id) VALUES (4, 'Hollywood Burbank                                 ', 'BUR', 2);
INSERT INTO qap1.airports (id, "airportName", code, city_id) VALUES (5, 'OHare International                               ', 'ORD', 3);
INSERT INTO qap1.airports (id, "airportName", code, city_id) VALUES (6, 'George Bush Intercontinental                      ', 'IAH', 4);
INSERT INTO qap1.airports (id, "airportName", code, city_id) VALUES (7, 'Sky Harbor International                          ', 'PHX', 5);

-- PASSENGERS
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (1, 'Jennifer Reach', 1);
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (2, 'Danny Villa', 2);
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (3, 'Johnson Online', 5);
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (4, 'Randall Randallson', 2);
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (5, 'Boris Borssison', 2);
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (6, 'Greg Greggson', 5);
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (7, 'Fred Redderfred', 3);
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (8, 'Caroline Roliner', 3);
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (9, 'Neil Hutchingsputch', 2);
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (10, 'Mickey Splickticket', 1);
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (11, 'Renata Ratata', 1);
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (12, 'Dirgible Jones', 1);
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (13, 'Foment Revoluciona', 3);
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (14, 'Kingly Kingster', 5);
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (15, 'Damascus Steel', 4);
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (16, 'Frank Water', 4);
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (17, 'Sanferd Sons', 3);
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (18, 'Big Bonesy', 3);
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (19, 'Captain Corgi', 5);
INSERT INTO qap1.passengers (id, "name", city_id) VALUES (20, 'Fordella Distorpia', 4);

-- AIRCRAFT
INSERT INTO qap1.aircraft( id, type) VALUES (1, '737');
INSERT INTO qap1.aircraft(id, "type") VALUES (2, 'A330');
INSERT INTO qap1.aircraft(id, "type") VALUES (3, 'Prop');
INSERT INTO qap1.aircraft(id, "type") VALUES (4, '727');
INSERT INTO qap1.aircraft(id, "type") VALUES (5, 'B45');
SELECT * from qap1.aircraft;

--AIRCRAFT_AIRPORT (5/7) Every instance of an aircraft being at an airport
INSERT INTO qap1.airport_aircraft(id, "airport_id", "aircraft_id") VALUES (1, 1, 1); -- La Guardia, 737
INSERT INTO qap1.airport_aircraft(id, "airport_id", "aircraft_id") VALUES (2, 1, 2); -- LG, A330
INSERT INTO qap1.airport_aircraft(id, "airport_id", "aircraft_id") VALUES (3, 1, 3); -- LG, Prop
INSERT INTO qap1.airport_aircraft(id, "airport_id", "aircraft_id") VALUES (4, 2, 4); -- JFK, 727
INSERT INTO qap1.airport_aircraft(id, "airport_id", "aircraft_id") VALUES (5, 2, 5); -- JFK, B45
INSERT INTO qap1.airport_aircraft(id, "airport_id", "aircraft_id") VALUES (6, 2, 3); -- JFK, 727
INSERT INTO qap1.airport_aircraft(id, "airport_id", "aircraft_id") VALUES (7, 3, 3);
INSERT INTO qap1.airport_aircraft(id, "airport_id", "aircraft_id") VALUES (8, 3, 2);
INSERT INTO qap1.airport_aircraft(id, "airport_id", "aircraft_id") VALUES (9, 3, 5);
INSERT INTO qap1.airport_aircraft(id, "airport_id", "aircraft_id") VALUES (10, 4, 5);
INSERT INTO qap1.airport_aircraft(id, "airport_id", "aircraft_id") VALUES (11, 4, 4);
INSERT INTO qap1.airport_aircraft(id, "airport_id", "aircraft_id") VALUES (12, 4, 3);
INSERT INTO qap1.airport_aircraft(id, "airport_id", "aircraft_id") VALUES (13, 5, 2);
INSERT INTO qap1.airport_aircraft(id, "airport_id", "aircraft_id") VALUES (14, 5, 1);
INSERT INTO qap1.airport_aircraft(id, "airport_id", "aircraft_id") VALUES (15, 5, 3);
INSERT INTO qap1.airport_aircraft(id, "airport_id", "aircraft_id") VALUES (16, 1, 4);
INSERT INTO qap1.airport_aircraft(id, "airport_id", "aircraft_id") VALUES (17, 1, 5);



-- AIRCRAFT_PASSENGERS (5/20) Every passenger on every flight
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (1, 1, 1); -- B
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (2, 1, 4);
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (3, 1, 2);
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (4, 2, 19);
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (5, 2, 12);
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (6, 2, 6);
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (7, 3, 9);
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (8, 3, 20);
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (9, 3, 11);
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (10, 4, 3);
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (11, 4, 5);
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (12, 4, 7);
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (13, 5, 13);
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (14, 5, 2);
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (15, 5, 20);
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (16, 1, 14);
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (17, 2, 8);
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (18, 3, 18);
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (19, 4, 15);
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (20, 5, 10);
INSERT INTO qap1.aircraft_passengers(id, "aircraft_id", "passenger_id") VALUES (21, 1, 18);
SELECT * from qap1.aircraft_passengers;

-- Question 1: What airports are in what cities?
SELECT airports."airportName", cities."cityName"
FROM qap1.airports, qap1.cities
WHERE airports.city_id = cities.id
ORDER by cities."cityName";

--Question 2: List all aircraft passengers have travelled on?
SELECT passengers."name", aircraft.id, aircraft."type"
FROM qap1.aircraft, qap1.passengers, qap1.aircraft_passengers
WHERE passengers.id = aircraft_passengers.passenger_id AND aircraft.id = aircraft_passengers.aircraft_id
ORDER by passengers.name, aircraft."type";

-- Question 3: Which airports can aircraft take off from and land at?
SELECT airports."airportName", aircraft.type
FROM qap1.airports, qap1.airport_aircraft, qap1.aircraft
WHERE airports.id = airport_aircraft.airport_id AND aircraft.id = airport_aircraft.aircraft_id
ORDER by airports."airportName";

--Question 4:  What airports have passengers used?
SELECT airports."airportName", aircraft_passengers.passenger_id
FROM qap1.airports, qap1.aircraft_passengers, qap1.airport_aircraft
WHERE aircraft_passengers.aircraft_id = airport_aircraft.aircraft_id AND airports.id = airport_aircraft.airport_id
ORDER by airports."airportName"