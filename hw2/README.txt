README.txt

HW2 - CSCI 585 - Database Systems
Laxmi Garde


DB Software used to execute all queries: Browser based SQL Interpreter: https://sql.js.org/examples/GUI/
Queries available in files: Q1.sql, Q2.sql, Q3.sql, Q4.sql and Q5.sql

Q1. Tables based on the ER diagram shared for HW2 have been prepared using SQL command and placed in Q1.sql file. 

The tables are created and populated using SQL commands. The execution of the queries has been performed on Browser based SQL Interpreter.
Tables created in Q1.sql include:
Employee: ID, name, office number, floor number, phone number, email address etc.
Meeting: meeting ID, employee ID, room number, floor number, meeting start time 
Notification: notification ID, employee ID, notification date, notification type (mandatory, optional)
Symptom: row ID, employee ID, date reported, symptom ID
Scan: scan ID, scan date, scan time, employee ID, temperature
Test: test ID, location (company or hospital or clinic etc), test date, test time, employee ID, test result (positive or negative)
Case1: case ID, employee ID, date, resolution (back to work, left the company, or deceased)
HealthStatus [self-reporting by employees]: row ID, employee ID, date, status (sick, hospitalized, well)

================================================

Q2. Write a query to output the most-self-reported symptom.

The query to output the most self-reported symptom is available in Q2.sql file. The query returns the most reported symptom along with the count.
The table is categorized (using group by) based on 'symptoms' to get the max count of symptom which occurs/is reported by the employees.

================================================

Q3. Write a query to output the 'sickest' floor.

The query to output the sickest floor is available in Q3.sql file. The approach used to return the sickest floor is as follows:
- create a view comprising the join of Employee and Test tables having test_result as 'positive'
- group by floor_number to return the floor that has maximum count of employees that are 'positive', and pick the topmost value. 

================================================

Q4. The management would like stats, for a given period (between start, end dates), on the following: 
a. number of scans
b. number of tests
c. number of employees who self-reported symptoms
d. number of positive cases
Write queries to output these.

The queries for the above cases are available in Q4.sql file. 
All four cases have been executed separately and the date ranges have been added by me. For the management to get the stats, they can enter dates based on their requirement, which may include getting stats for a particular quarter, half-yearly, yearly etc.

================================================

Q5. Create your own query! What else would you like to learn, from the data? Describe/list the question, and come up with the query to answer it. 

The queries related to this are listed in the Q5.sql file. The following queries are present to derive more details from the data available:
a. Total deaths of employees in the office for a given period (quarter, half-year, year)
b. Most common symptom reported by the employees
c. Number of employees admitted to the Hospital. [Can be used by the company to get total expenditure required for employee hospitalizations]
d. Find meeting room of employees who received 'mandatory' notification to get tested
e. Find the symptoms shown by all employees - using table division: returns a list of all employees that show symptoms.

================================================



