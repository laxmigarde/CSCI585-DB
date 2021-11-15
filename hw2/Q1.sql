/**
DB Software Used: Browser based SQL Interpreter: https://sql.js.org/examples/GUI/

HW2 - CSCI 585 - Database Systems
Laxmi Garde

Q.1 Create the tables and populate the tables with relevant data using SQL command.
**/


/** Please use the 'drop table if exists' commands as below before the 'create table' commands to avoid 
  'table Employees already exists' like issue 
while performing multiple executions to run queries on the SQL Interpreter - https://sql.js.org/examples/GUI/
**/
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Meeting;
DROP TABLE IF EXISTS Notification;
DROP TABLE IF EXISTS Symptom;
DROP TABLE IF EXISTS Scan;
DROP TABLE IF EXISTS Test;
DROP TABLE IF EXISTS Case1;
DROP TABLE IF EXISTS Healthstatus;
DROP VIEW IF EXISTS emp_view;

/** create tables **/
CREATE TABLE Employees(employee_id integer, name varchar(50), office_number varchar(50), floor_number integer, email_address varchar(50));
CREATE TABLE Meeting(meeting_id integer, employee_id integer, room_number integer, floor_number integer, meeting_start_time varchar(20), FOREIGN KEY (employee_id) references Employees(employee_id));
CREATE TABLE Notification(notification_id integer, employee_id integer, notification_date varchar(20), notification_type varchar(20),FOREIGN KEY (employee_id) references Employees);
CREATE TABLE Symptom(row_id integer, symptoms varchar(20), employee_id integer, date_reported date(20), symptom_id integer, FOREIGN KEY (employee_id) references Employees);
CREATE TABLE Scan(scan_id integer, scan_date date(10), scan_time varchar(20), employee_id, temperature varchar(20), FOREIGN KEY (employee_id) references Employees);
CREATE TABLE Test(test_id integer, location varchar(20), test_date varchar(20), test_time varchar(20), employee_id integer, test_result varchar(20), FOREIGN KEY (employee_id) references Employees);
/** Case1 is same as Case table to be created **/
CREATE TABLE Case1(case_id integer, employee_id integer, date varchar(20), resolution varchar(50), FOREIGN KEY (employee_id) references Employees);
CREATE TABLE HealthStatus(row_id integer, employee_id integer, date varchar(20), status varchar(50), FOREIGN KEY (employee_id) references Employees);



/** populate tables **/
INSERT INTO Employees VALUES (1001, 'JACK', 'Office 1', 3, 'jack@xyz.com');
INSERT INTO Employees VALUES (1002, 'JANE', 'Office 1', 5, 'jane@xyz.com');
INSERT INTO Employees VALUES (1003, 'AJAY', 'Office 1', 2, 'ajay@xyz.com');
INSERT INTO Employees VALUES (1004, 'SWATI', 'Office 1', 8, 'swati@xyz.com');
INSERT INTO Employees VALUES (1005, 'SAM', 'Office 1', 4, 'sam@xyz.com');
INSERT INTO Employees VALUES (1006, 'VIJAY', 'Office 1', 2, 'vijay@xyz.com');
INSERT INTO Employees VALUES (1007, 'MICHAEL', 'Office 1', 10, 'michael@xyz.com');
INSERT INTO Employees VALUES (1008, 'ZACK', 'Office 1', 3, 'zack@xyz.com');
INSERT INTO Employees VALUES (1009, 'JASON', 'Office 1', 2, 'jason@xyz.com');
INSERT INTO Employees VALUES (1010, 'JAI', 'Office 1', 2, 'jai@xyz.com');
INSERT INTO Employees VALUES (1011, 'JUSTIN', 'Office 1', 1, 'justin@xyz.com');
INSERT INTO Employees VALUES (1012, 'ROCK', 'Office 1', 2, 'rock@xyz.com');
INSERT INTO Employees VALUES (1013, 'NITIN', 'Office 1', 5, 'nitin@xyz.com');
INSERT INTO Employees VALUES (1014, 'AMBER', 'Office 1', 6, 'amber@xyz.com');
INSERT INTO Employees VALUES (1015, 'RAJ', 'Office 1', 7, 'raj@xyz.com');
INSERT INTO Employees VALUES (1016, 'CLARA', 'Office 1', 9, 'clara@xyz.com');
INSERT INTO Employees VALUES (1017, 'ANA', 'Office 1', 10, 'ana@xyz.com');
INSERT INTO Employees VALUES (1018, 'HARI', 'Office 1', 6, 'hari@xyz.com');
INSERT INTO Employees VALUES (1019, 'CLAUDE', 'Office 1', 7, 'claude@xyz.com');
INSERT INTO Employees VALUES (1020, 'MURPHY', 'Office 1', 9, 'murphy@xyz.com');


INSERT INTO Meeting VALUES(100, 1001, 1, 3, '18');
INSERT INTO Meeting VALUES(200, 1002, 2, 5, '09');
INSERT INTO Meeting VALUES(300, 1003, 3, 2, '13');
INSERT INTO Meeting VALUES(400, 1004, 4, 8, '10');
INSERT INTO Meeting VALUES(500, 1005, 5, 4, '11');
INSERT INTO Meeting VALUES(600, 1006, 1, 2, '11');
INSERT INTO Meeting VALUES(700, 1007, 2, 10, '12');
INSERT INTO Meeting VALUES(800, 1008, 6, 3, '13');
INSERT INTO Meeting VALUES(900, 1009, 8, 2, '11');
INSERT INTO Meeting VALUES(1000, 1010, 6, 2, '10');
INSERT INTO Meeting VALUES(1100, 1011, 1, 1, '13');
INSERT INTO Meeting VALUES(200, 1012, 2, 2, '10');
INSERT INTO Meeting VALUES(300, 1013, 3, 5, '11');
INSERT INTO Meeting VALUES(400, 1014, 4, 6, '15');
INSERT INTO Meeting VALUES(500, 1015, 5, 7, '09');
INSERT INTO Meeting VALUES(600, 1016, 6, 9, '14');
INSERT INTO Meeting VALUES(700, 1017, 7, 10, '12');
INSERT INTO Meeting VALUES(800, 1018, 8, 6, '11');
INSERT INTO Meeting VALUES(900, 1019, 9, 7, '17');
INSERT INTO Meeting VALUES(1000, 1020, 6, 9, '16');


INSERT INTO Notification VALUES (123, 1001, '2021-05-20', 'mandatory');
INSERT INTO Notification VALUES (124, 1002, '2021-04-19', 'optional');
INSERT INTO Notification VALUES (125, 1003, '2021-04-10', 'optional');
INSERT INTO Notification VALUES (126, 1004, '2021-07-03', 'optional');
INSERT INTO Notification VALUES (127, 1005, '2021-02-23', 'mandatory');
INSERT INTO Notification VALUES (128, 1006, '2021-03-13', 'optional');
INSERT INTO Notification VALUES (129, 1007, '2021-02-10', 'mandatory');
INSERT INTO Notification VALUES (130, 1008, '2021-04-08', 'optional');
INSERT INTO Notification VALUES (131, 1009, '2021-07-05', 'optional');
INSERT INTO Notification VALUES (132, 1010, '2021-01-26', 'mandatory');
INSERT INTO Notification VALUES (133, 1011, '2021-05-28', 'mandatory');
INSERT INTO Notification VALUES (134, 1012, '2021-02-22', 'optional');
INSERT INTO Notification VALUES (135, 1013, '2021-04-11', 'mandatory');
INSERT INTO Notification VALUES (136, 1014, '2021-06-23', 'optional');
INSERT INTO Notification VALUES (137, 1015, '2021-06-20', 'mandatory');
INSERT INTO Notification VALUES (138, 1016, '2021-01-13', 'mandatory');
INSERT INTO Notification VALUES (139, 1017, '2021-03-15', 'optional');
INSERT INTO Notification VALUES (140, 1018, '2021-04-01', 'mandatory');
INSERT INTO Notification VALUES (141, 1019, '2021-02-18', 'optional');
INSERT INTO Notification VALUES (142, 1020, '2021-06-21', 'mandatory');


INSERT INTO Symptom VALUES (1,'Cold', 1001, '2021-02-23', 1);
INSERT INTO Symptom VALUES (2,'Cold', 1002, '2021-02-03', 1);
INSERT INTO Symptom VALUES (3,'Flu', 1002, '2021-01-20', 2);
INSERT INTO Symptom VALUES (4,'Cough', 1002, '2021-02-01', 3);
INSERT INTO Symptom VALUES (5,'Taste', 1002, '2021-01-28', 4);
INSERT INTO Symptom VALUES (6,'Fever', 1002, '2021-01-25', 5);
INSERT INTO Symptom VALUES (7,'Cold', 1003, '2021-01-20', 1);
INSERT INTO Symptom VALUES (8,'Cough', 1003, '2021-04-19', 3);
INSERT INTO Symptom VALUES (9,'Cold', 1004, '2021-04-19', 1);
INSERT INTO Symptom VALUES (10,'Taste', 1004, '2020-12-12', 4);
INSERT INTO Symptom VALUES (11,'Fever', 1005, '2021-04-25', 5);
INSERT INTO Symptom VALUES (12,'Cough', 1006, '2020-12-12', 3);
INSERT INTO Symptom VALUES (13,'Fever', 1008, '2021-03-18', 5);
INSERT INTO Symptom VALUES (14,'Cold', 1010, '2021-01-20', 1);
INSERT INTO Symptom VALUES (15,'Flu', 1010, '2021-01-21', 2);
INSERT INTO Symptom VALUES (16,'Cold', 1011, '2021-04-19', 1);
INSERT INTO Symptom VALUES (17,'Taste', 1012, '2020-12-12', 4);
INSERT INTO Symptom VALUES (18,'Fever', 1013, '2021-04-25', 5);
INSERT INTO Symptom VALUES (19,'Cough', 1013, '2020-04-25', 3);
INSERT INTO Symptom VALUES (20,'Fever', 1014, '2021-03-18', 5);
INSERT INTO Symptom VALUES (21,'Cold', 1015, '2021-01-20', 1);
INSERT INTO Symptom VALUES (22,'Cough', 1016, '2021-02-20', 3);
INSERT INTO Symptom VALUES (23,'Cold', 1017, '2021-04-19', 1);
INSERT INTO Symptom VALUES (24,'Taste', 1018, '2020-12-12', 4);
INSERT INTO Symptom VALUES (25,'Fever', 1019, '2021-04-25', 5);
INSERT INTO Symptom VALUES (26,'Cough', 1020, '2020-12-12', 3);
INSERT INTO Symptom VALUES (27,'Fever', 1020, '2021-06-11', 5);


INSERT INTO Scan VALUES (1,'2021-02-24','18', 1001, '101');
INSERT INTO Scan VALUES (2,'2021-01-21','10', 1002, '100');
INSERT INTO Scan VALUES (3,'2021-01-15','09', 1003, '97');
INSERT INTO Scan VALUES (4,'2021-04-25','12', 1004, '98');
INSERT INTO Scan VALUES (5,'2021-04-27','15', 1005, '98');
INSERT INTO Scan VALUES (6,'2020-12-10','18', 1006, '101');
INSERT INTO Scan VALUES (7,'2021-01-21','10', 1007, '102');
INSERT INTO Scan VALUES (8,'2021-03-20','09', 1008, '97');
INSERT INTO Scan VALUES (9,'2021-06-25','12', 1009, '98');
INSERT INTO Scan VALUES (10,'2021-01-20','15', 1010, '98');
INSERT INTO Scan VALUES (11,'2021-04-15','18', 1011, '101');
INSERT INTO Scan VALUES (12,'2020-12-10','10', 1012, '100');
INSERT INTO Scan VALUES (13,'2021-03-17','09', 1013, '97');
INSERT INTO Scan VALUES (14,'2021-03-12','12', 1014, '99');
INSERT INTO Scan VALUES (15,'2021-01-15','15', 1015, '98');
INSERT INTO Scan VALUES (16,'2021-02-21','18', 1016, '101');
INSERT INTO Scan VALUES (17,'2021-04-16','10', 1017, '100');
INSERT INTO Scan VALUES (18,'2020-12-08','09', 1018, '100');
INSERT INTO Scan VALUES (19,'2021-04-19','12', 1019, '102');
INSERT INTO Scan VALUES (20,'2021-06-05','15', 1020, '97');


INSERT INTO Test VALUES (1, 'company', '2021-02-28','18', 1001, 'positive');
INSERT INTO Test VALUES (2, 'hospital', '2021-01-23','09', 1002, 'negative');
INSERT INTO Test VALUES (3,'company', '2021-01-20','10', 1003, 'positive');
INSERT INTO Test VALUES (4, 'hospital','2021-04-27','13', 1004, 'negative');
INSERT INTO Test VALUES (5, 'clinic', '2021-04-30','15', 1005, 'positive');
INSERT INTO Test VALUES (6, 'clinic', '2020-12-19','11', 1006, 'positive');
INSERT INTO Test VALUES (7, 'company', '2021-01-25','12', 1007, 'positive');
INSERT INTO Test VALUES (8, 'hospital', '2021-03-23','15', 1008, 'positive');
INSERT INTO Test VALUES (9, 'hospital', '2021-06-27','18', 1009, 'positive');
INSERT INTO Test VALUES (10, 'clinic', '2021-01-25','11', 1010, 'negative');
INSERT INTO Test VALUES (11, 'company', '2021-04-19','18', 1011, 'positive');
INSERT INTO Test VALUES (12, 'hospital', '2020-12-12','09', 1012, 'positive');
INSERT INTO Test VALUES (13,'company', '2021-03-21','10', 1013, 'positive');
INSERT INTO Test VALUES (14, 'hospital','2021-03-16','13', 1014, 'negative');
INSERT INTO Test VALUES (15, 'company', '2021-01-20','15', 1015, 'positive');
INSERT INTO Test VALUES (16, 'clinic', '2021-02-24','11', 1016, 'negative');
INSERT INTO Test VALUES (17, 'company', '2021-04-22','12', 1017, 'positive');
INSERT INTO Test VALUES (18, 'hospital', '2020-12-17','15', 1018, 'positive');
INSERT INTO Test VALUES (19, 'company', '2021-04-27','18', 1019, 'negative');
INSERT INTO Test VALUES (20, 'clinic', '2021-06-11','11', 1020, 'positive');


INSERT INTO Case1 VALUES (1, 1001, '2021-03-02', 'back to work');
INSERT INTO Case1 VALUES (2, 1002, '2021-02-25', 'left the company');
INSERT INTO Case1 VALUES (3, 1003, '2021-02-12', 'deceased');
INSERT INTO Case1 VALUES (4, 1004, '2021-05-13', 'left the company');
INSERT INTO Case1 VALUES (5, 1005, '2021-05-11', 'back to work');
INSERT INTO Case1 VALUES (6, 1006, '2020-01-05', 'back to work');
INSERT INTO Case1 VALUES (7, 1007, '2021-02-07', 'left the company');
INSERT INTO Case1 VALUES (8, 1008, '2021-04-02', 'deceased');
INSERT INTO Case1 VALUES (9, 1009, '2021-07-10', 'left the company');
INSERT INTO Case1 VALUES (10, 1010, '2021-02-06', 'back to work');
INSERT INTO Case1 VALUES (11, 1011, '2021-04-30', 'back to work');
INSERT INTO Case1 VALUES (12, 1012, '2021-01-13', 'left the company');
INSERT INTO Case1 VALUES (13, 1013, '2021-04-12', 'deceased');
INSERT INTO Case1 VALUES (14, 1014, '2021-03-25', 'left the company');
INSERT INTO Case1 VALUES (15, 1015, '2021-02-07', 'back to work');
INSERT INTO Case1 VALUES (16, 1016, '2021-03-11', 'back to work');
INSERT INTO Case1 VALUES (17, 1017, '2021-05-01', 'left the company');
INSERT INTO Case1 VALUES (18, 1018, '2020-12-29', 'deceased');
INSERT INTO Case1 VALUES (19, 1019, '2021-05-09', 'left the company');
INSERT INTO Case1 VALUES (20, 1020, '2021-06-22', 'back to work');


INSERT INTO HealthStatus VALUES (1, 1001, '2021-02-29', 'sick');
INSERT INTO HealthStatus VALUES (2, 1002, '2021-02-13', 'well');
INSERT INTO HealthStatus VALUES (3, 1003, '2021-02-06', 'hospitalized');
INSERT INTO HealthStatus VALUES (4, 1004, '2021-04-19', 'sick');
INSERT INTO HealthStatus VALUES (5, 1005, '2021-04-23', 'well');
INSERT INTO HealthStatus VALUES (6, 1006, '2020-12-27', 'hospitalized');
INSERT INTO HealthStatus VALUES (7, 1007, '2021-01-25', 'sick');
INSERT INTO HealthStatus VALUES (8, 1008, '2021-03-27', 'sick');
INSERT INTO HealthStatus VALUES (9, 1009, '2021-06-15', 'hospitalized');
INSERT INTO HealthStatus VALUES (10, 1010, '2021-01-23', 'sick');
INSERT INTO HealthStatus VALUES (11, 1011, '2021-04-20', 'well');
INSERT INTO HealthStatus VALUES (12, 1012, '2021-01-01', 'hospitalized');
INSERT INTO HealthStatus VALUES (13, 1013, '2021-04-05', 'sick');
INSERT INTO HealthStatus VALUES (14, 1014, '2021-02-13', 'well');
INSERT INTO HealthStatus VALUES (15, 1015, '2021-02-02', 'hospitalized');
INSERT INTO HealthStatus VALUES (16, 1016, '2021-02-28', 'sick');
INSERT INTO HealthStatus VALUES (17, 1017, '2021-04-23', 'well');
INSERT INTO HealthStatus VALUES (18, 1018, '2020-12-10', 'hospitalized');
INSERT INTO HealthStatus VALUES (19, 1019, '2021-04-19', 'sick');
INSERT INTO HealthStatus VALUES (20, 1020, '2021-06-11', 'sick');


/** Display the tables **/
SELECT * FROM Employees;
SELECT * FROM Meeting;
SELECT * FROM Notification;
SELECT * FROM Symptom;
SELECT * FROM Scan;
SELECT * FROM Test;
SELECT * FROM Case1;
SELECT * FROM HealthStatus;