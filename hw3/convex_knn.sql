-- Laxmi Garde
-- HW3 - CSCI 585: Database Systems

-- Database: hw3
-- DROP DATABASE IF EXISTS hw3;


create table usc_locations(name varchar, geom geometry);
insert into usc_locations values ('Viterbi School', 'POINT(-118.288999246309 34.02079561940858)');
insert into usc_locations values ('Marshall School', 'POINT(-118.2855781597874 34.018611961910864)');
insert into usc_locations values ('Engemann SHC', 'POINT(-118.288560605085 34.02470454132185)');
insert into usc_locations values ('Cinematic School', 'POINT(-118.286258249574 34.02305997944613)');
insert into usc_locations values ('Annenberg School', 'POINT(-118.2866553299484 34.02217844004107)');
insert into usc_locations values ('Gerontology Center', 'POINT(-118.2903170891546 34.02008723287236)');
insert into usc_locations values ('Pardee Tower', 'POINT(-118.282202018845 34.01993996106996)');
insert into usc_locations values ('KaprielianHall', 'POINT(-118.290729456429 34.02176766025603)');
insert into usc_locations values ('Mudd Hall', 'POINT(-118.28654482089 34.018626390795625)');
insert into usc_locations values ('DohenyLibrary', 'POINT(-118.284333747541 34.020491549170394)');
insert into usc_locations values ('SAL', 'POINT(-118.288204729877 34.021722759583525)');
insert into usc_locations values ('Bloom HOF', 'POINT(-118.2884292156644 34.02274365712791)');
insert into usc_locations values ('Room Menlo', 'POINT(-118.2900615601698 34.02961699396593)');

select name,ST_AsText(geom) from usc_locations;


-- Convex Hull
select ST_AsText(ST_ConvexHull(ST_Collect(ST_GeomFromText('MULTIPOINT(-118.288999246309 34.02079561940858,
														  -118.2855781597874 34.018611961910864,
														  -118.288560605085 34.02470454132185,
														  -118.286258249574 34.02305997944613,
														  -118.2866553299484 34.02217844004107,
														  -118.2903170891546 34.02008723287236,
														  -118.282202018845 34.01993996106996,
														  -118.290729456429 34.02176766025603,
														  -118.28654482089 34.018626390795625,
														  -118.284333747541 34.020491549170394,
														  -118.288204729877 34.021722759583525,
														  -118.2884292156644 34.02274365712791,
														  -118.2900615601698 34.02961699396593)'))))
														  
														  
-- K nearest neighbors : 4
SELECT name, geom <-> ST_MakePoint( -118.2900615601698, 34.02961699396593 ) AS dist 
FROM usc_locations
ORDER BY dist limit 5;