/**
DB Software Used: Browser based SQL Interpreter: https://sql.js.org/examples/GUI/

HW2 - CSCI 585 - Database Systems
Laxmi Garde

Q4. The management would like stats, for a given period (between start, end dates), on the following: 
a. number of scans
b. number of tests
c. number of employees who self-reported symptoms
d. number of positive cases
Write queries to output these.
**/

/** a. number of scans **/
select count(scan_id) as TOTAL_SCANS from Scan where scan_date between '2021-02-01' and '2021-05-01';

/** b. number of tests **/
select count(test_id) as TOTAL_TESTS from Test where test_date between '2020-12-12' and '2021-04-01';

/** c. number of employees who self-reported symptoms **/
select count(distinct employee_id) as TOTAL_EMP from Symptom where date_reported between '2021-02-01' and '2021-04-01';

/** d. number of positive cases **/
select count(test_id) as TOTAL_POSITIVE_CASES from Test where test_result='positive' and test_date between '2020-12-12' and '2021-05-15';


/** 
O/P:
a. returns the number of scans for the specified date range
 | TOTAL_SCANS |
 ---------------
 |     10      |


b. returns the number of tests for the specified date range
 | TOTAL_TESTS |
 ---------------
 |     13      |


c. returns the distinct count of employees who self-reported symptoms for the specified date range
 | TOTAL_EMP |
 -------------
 |     5     |


d. returns the number of positive cases reported for the specified date range
 | TOTAL_POSITIVE_CASES |
 ------------------------
 |           12         | 

**/

